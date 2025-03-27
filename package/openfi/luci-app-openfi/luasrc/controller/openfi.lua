module("luci.controller.openfi", package.seeall)
local http = require("luci.http")
local i18n = require("luci.i18n")
local sys = require "luci.sys"
local jsc = require "luci.jsonc"
local nfs = require "nixio.fs"

function index()
    entry({"admin", "openfi"}, firstchild(), _("OpenFi"), 25).dependent=false
    entry({"admin", "openfi", "openfi6"}, alias("admin", "openfi", "openfi6", "settings"), _("OpenFi6"), 100).dependent = true
    entry({"admin", "openfi", "openfi6", "settings"},cbi("openfi/settings"),luci.i18n.translate("OpenFi Settings"),3).leaf = true
end


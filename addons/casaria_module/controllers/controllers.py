# -*- coding: utf-8 -*-
from openerp import http

# class CasariaModule(http.Controller):
#     @http.route('/casaria_module/casaria_module/', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/casaria_module/casaria_module/objects/', auth='public')
#     def list(self, **kw):
#         return http.request.render('casaria_module.listing', {
#             'root': '/casaria_module/casaria_module',
#             'objects': http.request.env['casaria_module.casaria_module'].search([]),
#         })

#     @http.route('/casaria_module/casaria_module/objects/<model("casaria_module.casaria_module"):obj>/', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('casaria_module.object', {
#             'object': obj
#         })
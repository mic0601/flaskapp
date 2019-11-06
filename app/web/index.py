from . import web
from app.helper.local import getLocal


@web.route('/')
@web.route('/index/')
def index():
    Local=getLocal()
    return 'Flask app v1: %s | %s | %s' % (Local.getcurrenttime(),
                             Local.gethostname(),
                             Local.getlocaladdress())


exports.home = {
  path: '/',
  method: 'GET',
  handler(request, reply) {
    reply('hi there');
  }
};

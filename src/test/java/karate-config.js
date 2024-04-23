function fn() {
  //config added for retry options
  karate.configure('retry',{ count: 10, interval: 5000 });
  env = karate.properties['env']
  if (!env) {
    env = 'dev';

  }
  var config = {
    baseUrl: 'https://dummy.restapiexample.com',
  }
  if (env == 'dev') {
    config.baseUrl = 'https://dummy.restapiexample.com';
    //if the env set to "mock", request will go to mock server
  } else if (env == 'mock') {
    config.baseUrl = 'http://ugurhan.com';
  }
  return config;
}
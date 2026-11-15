package com.transsion.apiinvoke.invoke.api;

import com.transsion.apiinvoke.IApiService;
import com.transsion.apiinvoke.subscribe.Publisher;

public interface IApiServiceImpl extends IApiService {
    ApiInterface getApiInterface();

    ApiPublisher getApiPublisher(Publisher.Host host);
}

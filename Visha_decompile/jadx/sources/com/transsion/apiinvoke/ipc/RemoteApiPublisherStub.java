package com.transsion.apiinvoke.ipc;

import android.os.RemoteException;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.api.ApiPublisher;
import com.transsion.apiinvoke.subscribe.PublishData;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.apiinvoke.subscribe.SubscribeHostInfo;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import java.io.Serializable;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RemoteApiPublisherStub extends APIPublisher.Stub implements ApiPublisher {
    protected final SubscribeStateChangeObserver mStateChangeObserver = new SubscribeStateChangeObserver.Stub() {
        @Override
        public void onSubscribeChange(ParcelPublisher parcelPublisher, int i) {
            Publisher publisher = parcelPublisher.getPublisher();
            SubscribeManager.getInstance(publisher.host).onSubscribeCountChange(publisher, i);
        }
    };

    @Override
    public int findLocalSubscribeTypeCount(String str, String str2, String str3) throws RemoteException {
        SubscribeManager subscribeManager = SubscribeManager.getInstance(str, str2);
        if (subscribeManager == null) {
            return 0;
        }
        try {
            return subscribeManager.countLocalSubscribe(str3);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public String[] getLocalSubscribeTypes() {
        List<SubscribeHostInfo> allSubscribeHostInfo = SubscribeManager.getAllSubscribeHostInfo();
        String[] strArr = new String[allSubscribeHostInfo.size()];
        for (int i = 0; i < allSubscribeHostInfo.size(); i++) {
            strArr[i] = parseSubscribeHostInfo(allSubscribeHostInfo.get(i));
        }
        return strArr;
    }

    @Override
    public String getServiceVersion() throws RemoteException {
        return ApiInvokeLog.VERSION;
    }

    @Override
    public SubscribeStateChangeObserver getSubscribeStateChangeObserver() {
        return this.mStateChangeObserver;
    }

    @Override
    public void onPublishData(ParcelPublishData parcelPublishData) {
        onPublishDataWithChain(parcelPublishData, new ParcelInvokeChain(InvokeChain.obtain()));
    }

    @Override
    public void onPublishDataWithChain(ParcelPublishData parcelPublishData, ParcelInvokeChain parcelInvokeChain) {
        if (parcelPublishData == null) {
            return;
        }
        try {
            PublishData publishData = parcelPublishData.getPublishData();
            publishData(publishData.getPublisher(), parcelInvokeChain.invokeChain(), publishData.getData());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String parseSubscribeHostInfo(SubscribeHostInfo subscribeHostInfo) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SerializableCookie.HOST, subscribeHostInfo.getHost().toString());
            List<SubscribeHostInfo.SubscribeTypeCount> subscribeTypes = subscribeHostInfo.getSubscribeTypes();
            JSONArray jSONArray = new JSONArray();
            for (SubscribeHostInfo.SubscribeTypeCount subscribeTypeCount : subscribeTypes) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("type", subscribeTypeCount.type);
                jSONObject2.put("subscribeCount", subscribeTypeCount.subscribeCount);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("typeCounts", jSONArray);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override
    public void publishData(Publisher publisher, InvokeChain invokeChain, Serializable serializable) {
        try {
            SubscribeManager.getInstance(publisher.host).publishData(publisher, invokeChain, serializable);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

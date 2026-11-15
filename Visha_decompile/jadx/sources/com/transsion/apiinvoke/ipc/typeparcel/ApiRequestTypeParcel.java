package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Parcel;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import com.transsion.apiinvoke.ipc.ITypeParcel;
import com.transsion.apiinvoke.ipc.TypeParcelFactor;

public class ApiRequestTypeParcel implements ITypeParcel<ApiRequest> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ApiRequest readFormParcel(Parcel parcel, Class cls) {
        ApiRequest.Builder builder = new ApiRequest.Builder();
        builder.channel(parcel.readString()).apiName(parcel.readString()).apiMethod(parcel.readString()).packageName(parcel.readString());
        int i = parcel.readInt();
        TypeValuePair[] typeValuePairArr = new TypeValuePair[i];
        for (int i2 = 0; i2 < i; i2++) {
            typeValuePairArr[i2] = (TypeValuePair) TypeParcelFactor.getFactor().readFormParcel(parcel, TypeValuePair.class);
        }
        builder.setParameters(typeValuePairArr);
        return builder.build();
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, ApiRequest apiRequest, int i) {
        parcel.writeString(apiRequest.getChannelName());
        parcel.writeString(apiRequest.getApiName());
        parcel.writeString(apiRequest.getApiMethod());
        parcel.writeString(apiRequest.packageName());
        TypeValuePair[] requestParameter = apiRequest.getRequestParameter();
        if (requestParameter == null || requestParameter.length == 0) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(requestParameter.length);
        for (TypeValuePair typeValuePair : requestParameter) {
            TypeParcelFactor.getFactor().writeToParcel(parcel, TypeValuePair.class, typeValuePair, i);
        }
    }
}

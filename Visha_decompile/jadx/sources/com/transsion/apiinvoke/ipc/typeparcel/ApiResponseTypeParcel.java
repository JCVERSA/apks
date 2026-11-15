package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Parcel;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import com.transsion.apiinvoke.ipc.ITypeParcel;
import com.transsion.apiinvoke.ipc.TypeParcelFactor;

public class ApiResponseTypeParcel implements ITypeParcel<ApiResponse> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public ApiResponse readFormParcel(Parcel parcel, Class cls) {
        return new ApiResponse(parcel.readInt(), parcel.readString(), parcel.readInt() > 0 ? (TypeValuePair) TypeParcelFactor.getFactor().readFormParcel(parcel, TypeValuePair.class) : null);
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, ApiResponse apiResponse, int i) {
        parcel.writeInt(apiResponse.resultCode);
        parcel.writeString(apiResponse.errorMsg);
        TypeValuePair resultData = apiResponse.getResultData();
        if (resultData == null || resultData.getValue() == null) {
            parcel.writeInt(0);
        }
        parcel.writeInt(1);
        TypeParcelFactor.getFactor().writeToParcel(parcel, TypeValuePair.class, apiResponse.getResultData(), i);
    }
}

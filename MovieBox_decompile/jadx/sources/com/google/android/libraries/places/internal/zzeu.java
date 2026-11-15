package com.google.android.libraries.places.internal;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkError;
import com.android.volley.ParseError;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.g;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.libraries.places.api.net.PlacesStatusCodes;

final class zzeu {
    static ApiException zza(VolleyError volleyError) {
        int i10;
        if (volleyError instanceof NetworkError) {
            i10 = 7;
        } else if (volleyError instanceof TimeoutError) {
            i10 = 15;
        } else if ((volleyError instanceof ServerError) || (volleyError instanceof ParseError)) {
            i10 = 8;
        } else {
            i10 = volleyError instanceof AuthFailureError ? PlacesStatusCodes.REQUEST_DENIED : 13;
        }
        g gVar = volleyError.networkResponse;
        return new ApiException(new Status(i10, String.format("Unexpected server error (HTTP Code: %s. Message: %s.)", gVar == null ? "N/A" : String.valueOf(gVar.f18617a), volleyError)));
    }
}

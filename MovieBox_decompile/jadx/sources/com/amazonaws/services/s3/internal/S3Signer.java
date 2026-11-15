package com.amazonaws.services.s3.internal;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.HttpUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class S3Signer extends AbstractAWSSigner {

    private static final Log f18047f = LogFactory.b(S3Signer.class);

    private final String f18048c;

    private final String f18049d;

    private final Set f18050e;

    public S3Signer() {
        this.f18048c = null;
        this.f18049d = null;
        this.f18050e = null;
    }

    @Override
    public void b(Request request, AWSCredentials aWSCredentials) {
        w(request, aWSCredentials, null);
    }

    protected void v(Request request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.a());
    }

    void w(Request request, AWSCredentials aWSCredentials, Date date) {
        if (this.f18049d == null) {
            throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
        }
        if (aWSCredentials == null || aWSCredentials.c() == null) {
            f18047f.a("Canonical string will not be signed, as no AWS Secret Key was provided");
            return;
        }
        AWSCredentials aWSCredentialsQ = q(aWSCredentials);
        if (aWSCredentialsQ instanceof AWSSessionCredentials) {
            v(request, (AWSSessionCredentials) aWSCredentialsQ);
        }
        String strB = HttpUtils.b(request.r().getPath(), this.f18049d, true);
        Date dateL = l(m(request));
        if (date == null) {
            date = dateL;
        }
        request.addHeader(HttpHeaders.DATE, ServiceUtils.a(date));
        String strA = RestUtils.a(this.f18048c, strB, request, null, this.f18050e);
        f18047f.a("Calculated string to sign:\n\"" + strA + "\"");
        request.addHeader(HttpHeaders.AUTHORIZATION, "AWS " + aWSCredentialsQ.b() + ":" + super.t(strA, aWSCredentialsQ.c(), SigningAlgorithm.HmacSHA1));
    }

    public S3Signer(String str, String str2) {
        this(str, str2, null);
    }

    public S3Signer(String str, String str2, Collection collection) {
        if (str2 != null) {
            this.f18048c = str;
            this.f18049d = str2;
            this.f18050e = collection == null ? null : Collections.unmodifiableSet(new HashSet(collection));
            return;
        }
        throw new IllegalArgumentException("Parameter resourcePath is empty");
    }
}

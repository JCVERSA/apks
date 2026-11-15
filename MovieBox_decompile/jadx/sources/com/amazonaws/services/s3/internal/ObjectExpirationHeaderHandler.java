package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {

    private static final Pattern f18027a = Pattern.compile("expiry-date=\"(.*?)\"");

    private static final Pattern f18028b = Pattern.compile("rule-id=\"(.*?)\"");

    private static final Log f18029c = LogFactory.b(ObjectExpirationHeaderHandler.class);

    private Date c(String str) {
        Matcher matcher = f18027a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.e(matcher.group(1));
        } catch (Exception e10) {
            f18029c.i("Error parsing expiry-date from x-amz-expiration header.", e10);
            return null;
        }
    }

    private String d(String str) {
        Matcher matcher = f18028b.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    @Override
    public void a(ObjectExpirationResult objectExpirationResult, HttpResponse httpResponse) {
        String str = (String) httpResponse.c().get("x-amz-expiration");
        if (str != null) {
            objectExpirationResult.setExpirationTime(c(str));
            objectExpirationResult.setExpirationTimeRuleId(d(str));
        }
    }
}

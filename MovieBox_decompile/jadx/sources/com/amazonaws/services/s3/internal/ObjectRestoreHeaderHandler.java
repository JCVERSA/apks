package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {

    private static final Pattern f18030a = Pattern.compile("expiry-date=\"(.*?)\"");

    private static final Pattern f18031b = Pattern.compile("ongoing-request=\"(.*?)\"");

    private static final Log f18032c = LogFactory.b(ObjectRestoreHeaderHandler.class);

    private Boolean c(String str) {
        Matcher matcher = f18031b.matcher(str);
        if (matcher.find()) {
            return Boolean.valueOf(Boolean.parseBoolean(matcher.group(1)));
        }
        return null;
    }

    private Date d(String str) {
        Matcher matcher = f18030a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.e(matcher.group(1));
        } catch (Exception e10) {
            f18032c.i("Error parsing expiry-date from x-amz-restore header.", e10);
            return null;
        }
    }

    @Override
    public void a(ObjectRestoreResult objectRestoreResult, HttpResponse httpResponse) {
        String str = (String) httpResponse.c().get("x-amz-restore");
        if (str != null) {
            objectRestoreResult.setRestoreExpirationTime(d(str));
            Boolean boolC = c(str);
            if (boolC != null) {
                objectRestoreResult.setOngoingRestore(boolC.booleanValue());
            }
        }
    }
}

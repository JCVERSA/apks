package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

public class HttpUrlFetcher implements DataFetcher<InputStream> {
    static final HttpUrlConnectionFactory DEFAULT_CONNECTION_FACTORY = new DefaultHttpUrlConnectionFactory();
    static final int INVALID_STATUS_CODE = -1;
    private static final int MAXIMUM_REDIRECTS = 5;
    static final String REDIRECT_HEADER_FIELD = "Location";
    private static final String TAG = "HttpUrlFetcher";
    private final HttpUrlConnectionFactory connectionFactory;
    private final GlideUrl glideUrl;
    private volatile boolean isCancelled;
    private InputStream stream;
    private final int timeout;
    private HttpURLConnection urlConnection;

    private static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
        DefaultHttpUrlConnectionFactory() {
        }

        @Override
        public HttpURLConnection build(URL url) throws IOException {
            return (HttpURLConnection) ((URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection()));
        }
    }

    interface HttpUrlConnectionFactory {
        HttpURLConnection build(URL url) throws IOException;
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i10) {
        this(glideUrl, i10, DEFAULT_CONNECTION_FACTORY);
    }

    private HttpURLConnection buildAndConfigureConnection(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection httpURLConnectionBuild = this.connectionFactory.build(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnectionBuild.addRequestProperty(entry.getKey(), entry.getValue());
            }
            httpURLConnectionBuild.setConnectTimeout(this.timeout);
            httpURLConnectionBuild.setReadTimeout(this.timeout);
            httpURLConnectionBuild.setUseCaches(false);
            httpURLConnectionBuild.setDoInput(true);
            httpURLConnectionBuild.setInstanceFollowRedirects(false);
            return httpURLConnectionBuild;
        } catch (IOException e10) {
            throw new HttpException("URL.openConnection threw", 0, e10);
        }
    }

    private static int getHttpStatusCodeOrInvalid(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException unused) {
            Log.isLoggable(TAG, 3);
            return -1;
        }
    }

    private InputStream getStreamForSuccessfulRequest(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.stream = ContentLengthInputStream.obtain(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable(TAG, 3)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Got non empty content encoding: ");
                    sb2.append(httpURLConnection.getContentEncoding());
                }
                this.stream = httpURLConnection.getInputStream();
            }
            return this.stream;
        } catch (IOException e10) {
            throw new HttpException("Failed to obtain InputStream", getHttpStatusCodeOrInvalid(httpURLConnection), e10);
        }
    }

    private static boolean isHttpOk(int i10) {
        return i10 / 100 == 2;
    }

    private static boolean isHttpRedirect(int i10) {
        return i10 / 100 == 3;
    }

    private InputStream loadDataWithRedirects(URL url, int i10, URL url2, Map<String, String> map) throws HttpException {
        if (i10 >= 5) {
            throw new HttpException("Too many (> 5) redirects!", -1);
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop", -1);
                }
            } catch (URISyntaxException unused) {
            }
        }
        HttpURLConnection httpURLConnectionBuildAndConfigureConnection = buildAndConfigureConnection(url, map);
        this.urlConnection = httpURLConnectionBuildAndConfigureConnection;
        try {
            httpURLConnectionBuildAndConfigureConnection.connect();
            this.stream = this.urlConnection.getInputStream();
            if (this.isCancelled) {
                return null;
            }
            int httpStatusCodeOrInvalid = getHttpStatusCodeOrInvalid(this.urlConnection);
            if (isHttpOk(httpStatusCodeOrInvalid)) {
                return getStreamForSuccessfulRequest(this.urlConnection);
            }
            if (!isHttpRedirect(httpStatusCodeOrInvalid)) {
                if (httpStatusCodeOrInvalid == -1) {
                    throw new HttpException(httpStatusCodeOrInvalid);
                }
                try {
                    throw new HttpException(this.urlConnection.getResponseMessage(), httpStatusCodeOrInvalid);
                } catch (IOException e10) {
                    throw new HttpException("Failed to get a response message", httpStatusCodeOrInvalid, e10);
                }
            }
            String headerField = this.urlConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new HttpException("Received empty or null redirect url", httpStatusCodeOrInvalid);
            }
            try {
                URL url3 = new URL(url, headerField);
                cleanup();
                return loadDataWithRedirects(url3, i10 + 1, url, map);
            } catch (MalformedURLException e11) {
                throw new HttpException("Bad redirect url: " + headerField, httpStatusCodeOrInvalid, e11);
            }
        } catch (IOException e12) {
            throw new HttpException("Failed to connect or obtain data", getHttpStatusCodeOrInvalid(this.urlConnection), e12);
        }
    }

    @Override
    public void cancel() {
        this.isCancelled = true;
    }

    @Override
    public void cleanup() {
        InputStream inputStream = this.stream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.urlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.urlConnection = null;
    }

    @Override
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override
    @NonNull
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        StringBuilder sb2;
        String string = "Finished http url fetcher fetch in ";
        long logTime = LogTime.getLogTime();
        try {
            dataCallback.onDataReady(loadDataWithRedirects(this.glideUrl.toURL(), 0, null, this.glideUrl.getHeaders()));
            logTime = logTime;
            if (Log.isLoggable(TAG, 2)) {
                sb2 = new StringBuilder();
                sb2.append("Finished http url fetcher fetch in ");
                double elapsedMillis = LogTime.getElapsedMillis(logTime);
                sb2.append(elapsedMillis);
                string = sb2.toString();
                logTime = elapsedMillis;
            }
        } catch (IOException e10) {
            Log.isLoggable(TAG, 3);
            dataCallback.onLoadFailed(e10);
            logTime = logTime;
            if (Log.isLoggable(TAG, 2)) {
                sb2 = new StringBuilder();
            }
        } finally {
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, string + LogTime.getElapsedMillis(logTime));
            }
        }
    }

    HttpUrlFetcher(GlideUrl glideUrl, int i10, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.glideUrl = glideUrl;
        this.timeout = i10;
        this.connectionFactory = httpUrlConnectionFactory;
    }
}

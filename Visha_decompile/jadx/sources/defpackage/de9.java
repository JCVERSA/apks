package defpackage;

import com.transsion.retrofit.factory.BaseAPIManager;
import com.transsion.retrofit.interceptor.HttpLoggingInterceptor;
import java.util.logging.Level;
import okhttp3.Interceptor;

public class de9 extends BaseAPIManager {

    public static final class a {
        public static final de9 a = new de9();
    }

    public static de9 a() {
        return a.a;
    }

    @Override
    public String createBaseUrl() {
        return ah8.a ? "https://test-visha.transsion-os.com" : "https://api.vishavideo.com";
    }

    @Override
    public Interceptor createInterceptor() {
        return new ge9();
    }

    @Override
    public Interceptor createLogInterceptor() {
        if (!ge.e()) {
            return null;
        }
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor("visha_api");
        httpLoggingInterceptor.setPrintLevel(HttpLoggingInterceptor.Level.BODY);
        httpLoggingInterceptor.setColorLevel(Level.INFO);
        return httpLoggingInterceptor;
    }

    public de9() {
    }
}

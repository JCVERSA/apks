package hg;

import android.net.ParseException;
import android.text.TextUtils;
import android.util.MalformedJsonException;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonParseException;
import com.hisavana.common.bean.TAdErrorCode;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.net.exception.ApiException;
import com.tn.lib.net.exception.ServerException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.ResponseBody;
import org.json.JSONException;
import retrofit2.HttpException;
import retrofit2.j0;

public final class a {

    public static final C0745a f61349a = new C0745a(null);

    private static final int f61350b = 1000;

    private static final int f61351c = 110004;

    private static final int f61352d = 9003;

    private static final int f61353e = 1102;

    private static final int f61354f = 11000;

    private static final int f61355g = 11001;

    private static final int f61356h = 1032;

    private static final int f61357i = TAdErrorCode.CODE_CURRENT_OBJECT_IS_DESTROYED;

    public static final class C0745a {
        public C0745a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ApiException a(Throwable th2) {
            ApiException apiException;
            ResponseBody responseBodyD;
            if (th2 instanceof HttpException) {
                HttpException httpException = (HttpException) th2;
                j0<?> j0VarResponse = httpException.response();
                BaseDto baseDto = (BaseDto) o.d((j0VarResponse == null || (responseBodyD = j0VarResponse.d()) == null) ? null : responseBodyD.string(), BaseDto.class);
                if (baseDto == null) {
                    return new ApiException(th2, String.valueOf(httpException.code()), httpException.message());
                }
                if (TextUtils.isEmpty(baseDto.getMsg())) {
                    baseDto.setMsg("Oops，something went wrong");
                }
                return new ApiException(th2, String.valueOf(httpException.code()), baseDto.getMsg());
            }
            if (th2 instanceof ServerException) {
                ServerException serverException = (ServerException) th2;
                return new ApiException(th2, serverException.getErrCode(), serverException.getErrMsg());
            }
            if ((th2 instanceof JsonParseException) || (th2 instanceof JSONException) || (th2 instanceof ParseException) || (th2 instanceof MalformedJsonException)) {
                apiException = new ApiException(th2, String.valueOf(a.f61354f), "Oops，something went wrong");
            } else if (th2 instanceof ConnectException) {
                apiException = new ApiException(th2, String.valueOf(a.f61352d), "Oops，something went wrong");
            } else if (th2 instanceof SocketTimeoutException) {
                apiException = new ApiException(th2, String.valueOf(a.f61357i), "Oops，something went wrong");
            } else if (th2 instanceof UnknownHostException) {
                apiException = new ApiException(th2, String.valueOf(a.f61352d), "Oops，something went wrong");
            } else {
                if (th2 == null) {
                    throw new RuntimeException("未知异常");
                }
                apiException = new ApiException(th2, String.valueOf(a.f61350b), "Oops，something went wrong");
            }
            return apiException;
        }

        private C0745a() {
        }
    }
}

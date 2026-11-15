package j6;

import com.bykv.vk.openvk.Sj.Sj.sP.sP.uA;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.InputStream;
import java.util.List;

public abstract class c {

    List f63053a;

    b f63054b;

    public abstract InputStream a();

    public abstract String b();

    public b c() {
        return this.f63054b;
    }

    public abstract int d();

    protected uA.c e(String str) {
        List list;
        if (str != null && (list = this.f63053a) != null && list.size() > 0) {
            for (uA.c cVar : this.f63053a) {
                if (str.equals(cVar.f19671a)) {
                    return cVar;
                }
            }
        }
        return null;
    }

    protected String f(int i10) {
        switch (i10) {
            case 200:
                return "OK";
            case 201:
                return "Created";
            case AD_CONSUMED_VALUE:
                return "Accepted";
            case AD_IS_LOADING_VALUE:
                return "Non-Authoritative";
            case AD_ALREADY_LOADED_VALUE:
                return "No Content";
            case AD_IS_PLAYING_VALUE:
                return "Reset Content";
            case AD_ALREADY_FAILED_VALUE:
                return "Partial Content";
            default:
                switch (i10) {
                    case 300:
                        return "Multiple Choices";
                    case MRAID_ERROR_VALUE:
                        return "Moved Permanently";
                    case INVALID_IFA_STATUS_VALUE:
                        return "Temporary Redirect";
                    case 303:
                        return "See Other";
                    case AD_EXPIRED_VALUE:
                        return "Not Modified";
                    case MRAID_BRIDGE_ERROR_VALUE:
                        return "Use Proxy";
                    default:
                        switch (i10) {
                            case 400:
                                return "Bad Request";
                            case 401:
                                return "Unauthorized";
                            case TTAdConstant.AD_ID_IS_NULL_CODE:
                                return "Payment Required";
                            case TTAdConstant.DEEPLINK_UNAVAILABLE_CODE:
                                return "Forbidden";
                            case TTAdConstant.DEEPLINK_FALLBACK_CODE:
                                return "Not Found";
                            case TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE:
                                return "Method Not Allowed";
                            case TTAdConstant.LANDING_PAGE_TYPE_CODE:
                                return "Not Acceptable";
                            case TTAdConstant.DOWNLOAD_APP_INFO_CODE:
                                return "Proxy Authentication Required";
                            case TTAdConstant.DOWNLOAD_URL_CODE:
                                return "Request Time-Out";
                            case TTAdConstant.IMAGE_LIST_CODE:
                                return "Conflict";
                            case TTAdConstant.IMAGE_LIST_SIZE_CODE:
                                return "Gone";
                            case TTAdConstant.IMAGE_CODE:
                                return "Length Required";
                            case TTAdConstant.IMAGE_URL_CODE:
                                return "Precondition Failed";
                            case TTAdConstant.VIDEO_INFO_CODE:
                                return "Request Entity Too Large";
                            case TTAdConstant.VIDEO_URL_CODE:
                                return "Request-URI Too Large";
                            case TTAdConstant.VIDEO_COVER_URL_CODE:
                                return "Unsupported Media Type";
                            default:
                                switch (i10) {
                                    case 500:
                                        return "Internal Server Error";
                                    case 501:
                                        return "Not Implemented";
                                    case 502:
                                        return "Bad Gateway";
                                    case 503:
                                        return "Service Unavailable";
                                    case 504:
                                        return "Gateway Timeout";
                                    case 505:
                                        return "HTTP Version Not Supported";
                                    default:
                                        return "";
                                }
                        }
                }
        }
    }

    public abstract String g(String str, String str2);

    public abstract List h();

    public abstract boolean i();

    public abstract String j();
}

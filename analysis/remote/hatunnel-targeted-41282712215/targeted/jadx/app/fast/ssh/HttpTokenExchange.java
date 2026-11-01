package app.fast.ssh;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

public class HttpTokenExchange implements BillingManager.TokenExchange {
    private static final int CONNECT_TIMEOUT_MS = 15000;
    private static final int READ_TIMEOUT_MS = 20000;
    private static final String TAG = ProtectedFastSSH.s("⽍");
    private final String endpoint;
    private final ExecutorService io = Executors.newSingleThreadExecutor();

    class AnonymousClass1 implements Runnable {
        final BillingManager.TokenExchange.Callback val$callback;
        final String val$purchaseToken;
        final String val$userId;

        AnonymousClass1(String str, String str2, BillingManager.TokenExchange.Callback callback) {
            this.val$purchaseToken = str;
            this.val$userId = str2;
            this.val$callback = callback;
        }

        @Override
        public void run() throws Throwable {
            HttpTokenExchange.access$000(HttpTokenExchange.this, this.val$purchaseToken, this.val$userId, this.val$callback);
        }
    }

    public HttpTokenExchange(String str) {
        this.endpoint = str;
    }

    static void access$000(HttpTokenExchange httpTokenExchange, String str, String str2, BillingManager.TokenExchange.Callback callback) throws Throwable {
        httpTokenExchange.call(str, str2, callback);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0109  */
    /* JADX WARN: Code duplicated, block: B:38:0x0168  */
    /* JADX WARN: Code duplicated, block: B:41:0x016e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0151 -> B:36:0x0156). Please report as a decompilation issue!!! */
    private void call(String str, String str2, BillingManager.TokenExchange.Callback callback) throws Throwable {
        ?? r10;
        StringBuilder sb;
        StringBuilder sb2;
        StringBuilder sb3;
        ProtectedFastSSH.s("⽍");
        String strS = ProtectedFastSSH.s("⽎");
        String strS2 = ProtectedFastSSH.s("⽏");
        String strS3 = ProtectedFastSSH.s("⽐");
        String strS4 = ProtectedFastSSH.s("⽑");
        ?? r5 = 0;
        ?? r6 = 0;
        try {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(ProtectedFastSSH.s("⽒"), str);
                jSONObject.put(ProtectedFastSSH.s("⽓"), str2);
                byte[] bytes = jSONObject.toString().getBytes(StandardCharsets.UTF_8);
                r10 = (HttpURLConnection) new URL(this.endpoint).openConnection();
                try {
                    r10.setRequestMethod(ProtectedFastSSH.s("⽔"));
                    r10.setDoOutput(true);
                    r10.setConnectTimeout(CONNECT_TIMEOUT_MS);
                    r10.setReadTimeout(20000);
                    r10.setRequestProperty(ProtectedFastSSH.s("⽕"), ProtectedFastSSH.s("⽖"));
                    r10.setRequestProperty(ProtectedFastSSH.s("⽗"), ProtectedFastSSH.s("⽘"));
                    r10.setFixedLengthStreamingMode(bytes.length);
                    OutputStream outputStream = r10.getOutputStream();
                    outputStream.write(bytes);
                    outputStream.flush();
                    outputStream.close();
                    int responseCode = r10.getResponseCode();
                    sb2 = new StringBuilder(strS3);
                    sb2.append(responseCode);
                    sb2.toString();
                    if (responseCode == 200) {
                        JSONObject jSONObject2 = new JSONObject(readAll(r10.getInputStream()));
                        String strOptString = jSONObject2.optString(ProtectedFastSSH.s("⽙"), "");
                        long j = 0;
                        long jOptLong = jSONObject2.optLong(ProtectedFastSSH.s("⽚"), 0L);
                        if (strOptString.isEmpty()) {
                            ProtectedFastSSH.s("⽛");
                            callback.onUnreachable();
                            r5 = j;
                            r10 = r10;
                            if (r10 != 0) {
                                r10.disconnect();
                                return;
                            }
                        } else {
                            int i = (jOptLong > 0L ? 1 : (jOptLong == 0L ? 0 : -1));
                            if (i <= 0) {
                                j = i;
                                ProtectedFastSSH.s("⽛");
                                callback.onUnreachable();
                                r5 = j;
                                r10 = r10;
                                if (r10 != 0) {
                                    r10.disconnect();
                                    return;
                                }
                            } else {
                                sb3 = new StringBuilder(strS);
                                sb3.append(jOptLong);
                                sb3.toString();
                                callback.onValid(strOptString, jOptLong);
                                if (r10 != 0) {
                                    r5 = sb3;
                                    r10 = r10;
                                    r10.disconnect();
                                    return;
                                }
                            }
                        }
                    } else if (responseCode == 403) {
                        ProtectedFastSSH.s("⽜");
                        callback.onInvalid();
                        if (r10 != 0) {
                            r5 = sb2;
                            r10 = r10;
                            r10.disconnect();
                            return;
                        }
                    } else {
                        String str3 = strS2 + responseCode + ProtectedFastSSH.s("⽝") + readAll(r10.getErrorStream());
                        callback.onUnreachable();
                        if (r10 != 0) {
                            r5 = sb2;
                            r10 = r10;
                            r10.disconnect();
                            return;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    r6 = r10;
                    sb = new StringBuilder(strS4);
                    sb.append(e);
                    sb.toString();
                    callback.onUnreachable();
                    r5 = r6;
                    r10 = sb;
                    if (r6 != 0) {
                        r6.disconnect();
                        r5 = r6;
                        r10 = sb;
                    }
                } catch (Throwable th) {
                    th = th;
                    r5 = r10;
                    if (r5 != 0) {
                        r5.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (r5 != 0) {
                    r5.disconnect();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sb = new StringBuilder(strS4);
            sb.append(e);
            sb.toString();
            callback.onUnreachable();
            r5 = r6;
            r10 = sb;
            if (r6 != 0) {
                r6.disconnect();
                r5 = r6;
                r10 = sb;
            }
        }
        r5 = sb2;
        r10 = r10;
        r5 = sb2;
        r10 = r10;
        r5 = sb3;
        r10 = r10;
    }

    private static String readAll(InputStream inputStream) {
        if (inputStream == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            bufferedReader.close();
        } catch (Exception unused) {
        }
        return sb.toString();
    }

    @Override
    public void redeem(String str, String str2, BillingManager.TokenExchange.Callback callback) {
        this.io.execute(new AnonymousClass1(str, str2, callback));
    }
}

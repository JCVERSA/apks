package app.fast.ssh;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.fast.ssh.adapter.AppsAdapter;
import app.fast.ssh.util.ApkInfoExtractor;
import app.fast.ssh.util.DBHelper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class AppsFragment extends Fragment {
    private AppsAdapter adapter;
    private final String group;
    private final int icon;
    private RecyclerView recycler;
    private View wait_screen;

    static class AdapterTask extends AsyncTask<Object, String, String> {
        private final WeakReference<AppsFragment> weakReference;

        private AdapterTask(AppsFragment appsFragment) {
            this.weakReference = new WeakReference<>(appsFragment);
        }

        AdapterTask(AppsFragment appsFragment, AnonymousClass1 anonymousClass1) {
            this(appsFragment);
        }

        static int lambda$doInBackground$0(AppsAdapter.App app2, AppsAdapter.App app3) {
            return app2.appName.compareToIgnoreCase(app3.appName);
        }

        @Override
        protected String doInBackground(Object[] objArr) {
            return doInBackground2(objArr);
        }

        @Override
        protected String doInBackground2(Object... objArr) {
            Context context = this.weakReference.get().getContext();
            List listAccess$100 = AppsFragment.access$100(this.weakReference.get().getContext(), (String) objArr[0], ((Integer) objArr[1]).intValue());
            if (listAccess$100 == null) {
                return "";
            }
            Collections.sort(listAccess$100, new AppsFragment$AdapterTask$$ExternalSyntheticLambda0());
            AppsFragment.access$202(this.weakReference.get(), new AppsAdapter(context, listAccess$100));
            return "";
        }

        @Override
        protected void onPostExecute(String str) {
            onPostExecute2(str);
        }

        protected void onPostExecute2(String str) {
            super.onPostExecute(str);
            AppsFragment.access$300(this.weakReference.get()).setVisibility(8);
            AppsFragment.access$400(this.weakReference.get()).setAdapter(AppsFragment.access$200(this.weakReference.get()));
            AppsFragment.access$400(this.weakReference.get()).setVisibility(0);
        }
    }

    public AppsFragment(String str, int i) {
        this.group = str;
        this.icon = i;
    }

    static List access$100(Context context, String str, int i) {
        return initApps(context, str, i);
    }

    static AppsAdapter access$200(AppsFragment appsFragment) {
        return appsFragment.adapter;
    }

    static AppsAdapter access$202(AppsFragment appsFragment, AppsAdapter appsAdapter) {
        appsFragment.adapter = appsAdapter;
        return appsAdapter;
    }

    static View access$300(AppsFragment appsFragment) {
        return appsFragment.wait_screen;
    }

    static RecyclerView access$400(AppsFragment appsFragment) {
        return appsFragment.recycler;
    }

    private static List<AppsAdapter.App> initApps(Context context, String str, int i) throws Throwable {
        String strS = ProtectedFastSSH.s("ⷳ");
        try {
            String resource = readResource(context, ProtectedFastSSH.s("ⷴ"));
            String resource2 = new DBHelper(context).getResource(DBHelper.Resource.ALLOWED_APPS);
            if (!resource2.matches("") && ApkInfoExtractor.compareVersion(new JSONObject(resource).getString(strS), new JSONObject(resource2).getString(strS)) == -1) {
                resource = resource2;
            }
            JSONArray jSONArray = new JSONObject(resource).getJSONObject(ProtectedFastSSH.s("ⷵ")).getJSONArray(str);
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                arrayList.add(new AppsAdapter.App(ContextCompat.getDrawable(context, i), jSONObject.getString(ProtectedFastSSH.s("ⷶ")), jSONObject.getString(ProtectedFastSSH.s("ⷷ"))));
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }

    private static String readResource(Context context, String str) throws Throwable {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(context.getAssets().open(str)));
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                    } catch (IOException unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
                bufferedReader2.close();
            } catch (IOException unused3) {
            }
        } catch (IOException unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        return sb.toString();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(com.hatunnel.plus.R.layout.l_res_0x7f0c003d, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0901f4);
        this.recycler = recyclerView;
        recyclerView.setVisibility(8);
        this.recycler.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.wait_screen = viewInflate.findViewById(com.hatunnel.plus.R.id.l_res_0x7f0902aa);
        new AdapterTask(this, null).execute(this.group, Integer.valueOf(this.icon));
        return viewInflate;
    }
}

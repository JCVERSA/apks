package com.questionnaire.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import com.google.gson.Gson;
import com.questionnaire.sdk.dao.QuestionClientData;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.em8;
import defpackage.pia;
import defpackage.qk0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class QuestionnaireClient {
    public static QuestionnaireClient j;
    public Context a;
    public Context b;
    public IQuestionnaireService c;
    public Intent d;
    public Handler e;
    public HandlerThread f;
    public List g;
    public Handler h = new a(Looper.getMainLooper());
    public ServiceConnection i = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            QuestionnaireClient.this.c = IQuestionnaireService.Stub.asInterface(iBinder);
            QuestionnaireClient.this.e.post(new Runnable() {
                @Override
                public void run() {
                    while (QuestionnaireClient.this.g.size() > 0) {
                        Runnable runnable = (Runnable) QuestionnaireClient.this.g.get(0);
                        runnable.run();
                        QuestionnaireClient.this.g.remove(runnable);
                    }
                    QuestionnaireClient.this.c = null;
                    try {
                        if (QuestionnaireClient.this.a != null) {
                            QuestionnaireClient.this.a.unbindService(QuestionnaireClient.this.i);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            QuestionnaireClient.this.c = null;
        }
    };

    public class AnonymousClass4 implements com.questionnaire.sdk.view.a.d {
        public final com.questionnaire.sdk.view.a a;
        public final QuestionClientData b;

        public AnonymousClass4(com.questionnaire.sdk.view.a aVar, QuestionClientData questionClientData) {
            this.a = aVar;
            this.b = questionClientData;
        }

        @Override
        public void a(int i) {
            Log.d("QuestionnaireClient", "showScoreDialog onScore");
            if (QuestionnaireClient.this.b != null) {
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        AnonymousClass4.this.a.dismiss();
                        if (TextUtils.isEmpty(AnonymousClass4.this.b.getSuccessTip())) {
                            Toast.makeText(QuestionnaireClient.this.b, R.string.questionsdk_submitSuccessTip, 0).show();
                        } else {
                            Toast.makeText(QuestionnaireClient.this.b, AnonymousClass4.this.b.getSuccessTip(), 0).show();
                        }
                    }
                }, 1000L);
                QuestionnaireData questionnaireData = new QuestionnaireData();
                questionnaireData.setQuestionnaireId(this.b.getQuestionnaireId());
                ScoreResultBean.QuestionInput questionInput = new ScoreResultBean.QuestionInput();
                questionInput.setInputX(String.valueOf(i));
                ArrayList arrayList = new ArrayList();
                arrayList.add(questionInput);
                ScoreResultBean.QuestionResult questionResult = new ScoreResultBean.QuestionResult();
                questionResult.setIndex(0);
                questionResult.setUserInput(arrayList);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(questionResult);
                ScoreResultBean scoreResultBean = new ScoreResultBean();
                scoreResultBean.setQuestionnaireId(this.b.getQuestionnaireId());
                scoreResultBean.setQuestions(arrayList2);
                questionnaireData.setResult(new Gson().toJson(scoreResultBean));
                QuestionnaireClient.this.z(questionnaireData);
                final QuestionClientData questionClientData = this.b;
                pia.a(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.e(questionClientData);
                    }
                });
            }
        }

        public final void d(QuestionClientData questionClientData) {
            em8.e(QuestionnaireClient.this.a).n(questionClientData.getQuestionnaireId(), questionClientData.getShowCount() + 1);
        }

        public final void e(QuestionClientData questionClientData) {
            em8.e(QuestionnaireClient.this.a).a(questionClientData.getQuestionnaireId());
        }

        @Override
        public void onClose() {
            Log.d("QuestionnaireClient", "showScoreDialog onClose");
            final QuestionClientData questionClientData = this.b;
            pia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.d(questionClientData);
                }
            });
        }
    }

    public class AnonymousClass8 implements Runnable {
        final e val$callback;
        final String val$questionnaireId;
        final boolean val$useDefStyle;

        public AnonymousClass8(String str, e eVar, boolean z) {
            this.val$questionnaireId = str;
            this.val$callback = eVar;
            this.val$useDefStyle = z;
        }

        public void lambda$run$0(QuestionClientData questionClientData, long j) {
            em8.e(QuestionnaireClient.this.a).o(questionClientData.getQuestionnaireId(), j);
        }

        @Override
        public void run() {
            final QuestionClientData questionClientDataG = em8.e(QuestionnaireClient.this.a).g(this.val$questionnaireId);
            if (questionClientDataG != null) {
                int showCount = questionClientDataG.getShowCount();
                if (showCount >= questionClientDataG.getMaxShow()) {
                    this.val$callback.a(false);
                    Log.d("QuestionnaireClient", "showQuestionnaire show count is maxed");
                    return;
                }
                long showTimestamp = questionClientDataG.getShowTimestamp();
                final long jCurrentTimeMillis = System.currentTimeMillis();
                if (showTimestamp + 86400000 >= jCurrentTimeMillis) {
                    this.val$callback.a(true);
                    Log.d("QuestionnaireClient", "showQuestionnaire show time is expired");
                    return;
                }
                int type = questionClientDataG.getType();
                Message messageObtain = Message.obtain();
                if (!this.val$useDefStyle) {
                    QuestionnaireClient.this.h.removeMessages(1003);
                    messageObtain.what = 1003;
                } else if (type == 1) {
                    QuestionnaireClient.this.h.removeMessages(1001);
                    messageObtain.what = 1001;
                } else if (type == 2) {
                    QuestionnaireClient.this.h.removeMessages(1002);
                    messageObtain.what = 1002;
                }
                questionClientDataG.setQuestionnaireId(this.val$questionnaireId);
                messageObtain.obj = questionClientDataG;
                QuestionnaireClient.this.h.sendMessage(messageObtain);
                pia.a(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.lambda$run$0(questionClientDataG, jCurrentTimeMillis);
                    }
                });
                this.val$callback.a(showCount + 1 <= questionClientDataG.getMaxShow());
                Log.d("QuestionnaireClient", "showQuestionnaire show success");
            }
        }
    }

    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public final void b(QuestionClientData questionClientData) {
            em8.e(QuestionnaireClient.this.a).a(questionClientData.getQuestionnaireId());
        }

        @Override
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1001:
                    Log.d("QuestionnaireClient", "handle msg EVENT_SHOW_BUBBLE");
                    QuestionnaireClient.this.h.removeMessages(1001);
                    QuestionnaireClient.this.v((QuestionClientData) message.obj);
                    return;
                case 1002:
                    Log.d("QuestionnaireClient", "handle msg EVENT_SHOW_NPS");
                    QuestionnaireClient.this.h.removeMessages(1002);
                    QuestionnaireClient.this.y((QuestionClientData) message.obj);
                    break;
                case 1003:
                    break;
                default:
                    return;
            }
            Log.d("QuestionnaireClient", "handle msg EVENT_SHOW_DIRECT");
            QuestionnaireClient.this.h.removeMessages(1003);
            final QuestionClientData questionClientData = (QuestionClientData) message.obj;
            Intent intent = new Intent();
            intent.setClassName("com.idea.questionnaire", "com.idea.questionnaire.questionnaire.WebQuestionnaireActivity");
            intent.setFlags(268468224);
            intent.putExtra(DataTypes.OBJ_URL, questionClientData.getUrl());
            intent.putExtra("QID", questionClientData.getQuestionnaireId());
            intent.putExtra("APPNAME", QuestionnaireClient.this.a.getPackageName());
            QuestionnaireClient.this.a.startActivity(intent);
            pia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.b(questionClientData);
                }
            });
        }
    }

    public class b implements qk0.c {
        public final QuestionClientData a;

        public b(QuestionClientData questionClientData) {
            this.a = questionClientData;
        }

        @Override
        public void a() {
            Log.d("QuestionnaireClient", "showBubble onBubble");
            Intent intent = new Intent();
            intent.setClassName("com.idea.questionnaire", "com.idea.questionnaire.questionnaire.WebQuestionnaireActivity");
            intent.setFlags(268468224);
            intent.putExtra(DataTypes.OBJ_URL, this.a.getUrl());
            intent.putExtra("QID", this.a.getQuestionnaireId());
            intent.putExtra("APPNAME", "");
            QuestionnaireClient.this.a.startActivity(intent);
            final QuestionClientData questionClientData = this.a;
            pia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.d(questionClientData);
                }
            });
        }

        public final void d(QuestionClientData questionClientData) {
            em8.e(QuestionnaireClient.this.a).a(questionClientData.getQuestionnaireId());
        }

        public final void e(QuestionClientData questionClientData) {
            em8.e(QuestionnaireClient.this.a).n(questionClientData.getQuestionnaireId(), questionClientData.getShowCount() + 1);
        }

        @Override
        public void onClose() {
            Log.d("QuestionnaireClient", "showBubble onClose");
            final QuestionClientData questionClientData = this.a;
            pia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.e(questionClientData);
                }
            });
        }
    }

    public interface c {
        void a(List list);
    }

    public class d {
        public String a;
        public String b;

        public d() {
        }

        public String a() {
            return this.a;
        }

        public String b() {
            return this.b;
        }

        public void c(String str) {
            this.a = str;
        }

        public void d(String str) {
            this.b = str;
        }
    }

    public interface e {
        void a(boolean z);
    }

    public QuestionnaireClient(Context context) {
        Intent intent = new Intent();
        this.d = intent;
        intent.setClassName("com.idea.questionnaire", "com.questionnaire.sdk.QuestionnaireDataService");
        this.a = context.getApplicationContext();
        HandlerThread handlerThread = new HandlerThread("RemoteService");
        this.f = handlerThread;
        handlerThread.start();
        this.e = new Handler(this.f.getLooper());
        this.g = new ArrayList();
    }

    public static QuestionnaireClient o(Context context) {
        if (j == null) {
            synchronized (QuestionnaireClient.class) {
                try {
                    if (j == null) {
                        j = new QuestionnaireClient(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return j;
    }

    public void p(final c cVar) {
        if (cVar == null) {
            Log.w("QuestionnaireClient", "callback cannot be null, return");
            return;
        }
        long j2 = this.a.getSharedPreferences("question_sdk", 0).getLong("invoke_time", -1L);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (j2 <= 0 || jElapsedRealtime <= j2 || jElapsedRealtime - j2 >= 21600000) {
            q(new Runnable() {
                @Override
                public void run() {
                    try {
                        List<QuestionnaireData> questionnaireData = QuestionnaireClient.this.c.getQuestionnaireData(QuestionnaireClient.this.a.getPackageName());
                        if (questionnaireData != null) {
                            Log.d("QuestionnaireClient", "getQuestionnaires qaDataList: " + questionnaireData.size());
                        } else {
                            Log.d("QuestionnaireClient", "getQuestionnaires qaDataList == null");
                            cVar.a(new ArrayList());
                        }
                        cVar.a(QuestionnaireClient.this.u(questionnaireData));
                        QuestionnaireClient.this.a.getSharedPreferences("question_sdk", 0).edit().putLong("invoke_time", SystemClock.elapsedRealtime()).apply();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        } else {
            cVar.a(new ArrayList());
            Log.w("QuestionnaireClient", "frequent calls, return");
        }
    }

    public final void q(final Runnable runnable) {
        this.e.post(new Runnable() {
            @Override
            public void run() {
                QuestionnaireClient.this.g.add(runnable);
                if (QuestionnaireClient.this.c != null || QuestionnaireClient.this.a == null || QuestionnaireClient.this.a.bindService(QuestionnaireClient.this.d, QuestionnaireClient.this.i, 1)) {
                    return;
                }
                while (QuestionnaireClient.this.g.size() > 0) {
                    QuestionnaireClient.this.g.remove((Runnable) QuestionnaireClient.this.g.get(0));
                }
            }
        });
    }

    public final void r(List list) {
        em8.e(this.a).h(list);
    }

    public void s() {
        Log.w("QuestionnaireClient", "Activity onStop!");
        this.b = null;
    }

    public final QuestionTitleBean t(String str) {
        return (QuestionTitleBean) new Gson().fromJson(str, QuestionTitleBean.class);
    }

    public final List u(List list) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        String packageName = this.a.getPackageName();
        List listD = em8.e(this.a).d();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            QuestionnaireData questionnaireData = (QuestionnaireData) it.next();
            d dVar = new d();
            QuestionTitleBean questionTitleBeanT = t(questionnaireData.getQuestionnaire());
            QuestionClientData questionClientData = new QuestionClientData();
            dVar.c(questionnaireData.getQuestionnaireId());
            if (questionTitleBeanT != null) {
                if (TextUtils.equals(packageName, questionTitleBeanT.getAppName())) {
                    dVar.d(questionTitleBeanT.getTriggerCond());
                    List<QuestionDetailBean> questions = questionTitleBeanT.getQuestions();
                    questionClientData.setQuestionnaireId(questionnaireData.getQuestionnaireId());
                    questionClientData.setType(questionTitleBeanT.getType());
                    questionClientData.setUrl(questionnaireData.getUrl());
                    if (questions != null && questions.size() > 0) {
                        questionClientData.setTitle(questions.get(0).getTitle());
                        if (questions.get(0).getAnswers() != null) {
                            questionClientData.setMaxScore(questions.get(0).getAnswers().size());
                        }
                        if (questions.get(0).getScoreDesc() != null) {
                            questionClientData.setMaxDesc(questions.get(0).getScoreDesc().getMaxDesc());
                            questionClientData.setMinDesc(questions.get(0).getScoreDesc().getMinDesc());
                        }
                    }
                    questionClientData.setSuccessTip(questionTitleBeanT.getSubmitSuccTip());
                    questionClientData.setFailTip(questionTitleBeanT.getSubmitFailTip());
                    questionClientData.setTriggerCond(questionTitleBeanT.getTriggerCond());
                    if (questionTitleBeanT.getMaxShow() != 0) {
                        questionClientData.setMxShow(questionTitleBeanT.getMaxShow());
                    } else {
                        questionClientData.setMxShow(3);
                    }
                    questionClientData.setShowCount(0);
                    if (!listD.contains(questionnaireData.getQuestionnaireId())) {
                        arrayList2.add(questionClientData);
                    }
                }
            }
            arrayList.add(dVar);
        }
        Log.d("QuestionnaireClient", "processQuestionnaireData clientDataList: " + arrayList2);
        if (arrayList2.size() > 0) {
            pia.a(new Runnable() {
                @Override
                public final void run() {
                    this.b.r(arrayList2);
                }
            });
        }
        Log.d("QuestionnaireClient", "processQuestionnaireData resultDataList: " + arrayList);
        return arrayList;
    }

    public final void v(QuestionClientData questionClientData) {
        if (this.b == null) {
            Log.w("QuestionnaireClient", "mActivity cannot be null, return");
            return;
        }
        qk0 qk0Var = new qk0();
        qk0Var.setOnClickListener(new b(questionClientData));
        Context context = this.b;
        if (context instanceof Activity) {
            qk0Var.d((Activity) context);
        } else {
            Log.e("QuestionnaireClient", "must be Activity");
        }
    }

    public void w(Context context, String str, e eVar) {
        x(context, str, true, eVar);
    }

    public void x(Context context, String str, boolean z, e eVar) {
        if (eVar == null || context == null) {
            Log.w("QuestionnaireClient", "callback and activity can not be null, return");
        } else {
            this.b = context;
            pia.a(new AnonymousClass8(str, eVar, z));
        }
    }

    public final void y(QuestionClientData questionClientData) {
        if (this.b == null) {
            Log.w("QuestionnaireClient", "mActivity cannot be null, return");
        } else {
            com.questionnaire.sdk.view.a aVar = new com.questionnaire.sdk.view.a(this.b);
            aVar.g(questionClientData.getTitle()).d(questionClientData.getMinDesc()).f(questionClientData.getMaxDesc()).h(questionClientData.getMaxScore()).e(new AnonymousClass4(aVar, questionClientData)).show();
        }
    }

    public final void z(final QuestionnaireData questionnaireData) {
        Log.d("QuestionnaireClient", "uploadNPSResult");
        if (questionnaireData == null) {
            Log.w("QuestionnaireClient", "result cannot be null, return");
        } else {
            q(new Runnable() {
                @Override
                public void run() {
                    try {
                        QuestionnaireClient.this.c.uploadQuestionnaireResult(questionnaireData);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
        }
    }
}

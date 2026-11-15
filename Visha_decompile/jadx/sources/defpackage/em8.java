package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.questionnaire.sdk.dao.QuestionClientData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class em8 extends SQLiteOpenHelper {
    public static em8 b;

    public em8(Context context) {
        super(context, "questionsdk.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    public static synchronized em8 e(Context context) {
        try {
            if (b == null) {
                b = new em8(context.getApplicationContext());
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public void a(String str) {
        try {
            getWritableDatabase().delete("questionnaire", "questionnaire_id=?", new String[]{str});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(SQLiteDatabase sQLiteDatabase) {
        Log.d("QuestionnaireDBHelper", "dropTables");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS questionnaire");
    }

    public List d() {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"questionnaire_id"};
        SQLiteDatabase readableDatabase = getReadableDatabase();
        Cursor cursorQuery = null;
        try {
            cursorQuery = readableDatabase.query("questionnaire", strArr, null, null, null, null, null);
            while (cursorQuery != null && cursorQuery.moveToNext()) {
                arrayList.add(cursorQuery.getString(0));
            }
            Log.d("QuestionnaireDBHelper", "getAllQuestionnaireIds, allIds: " + arrayList);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    public QuestionClientData g(String str) {
        QuestionClientData questionClientData = new QuestionClientData();
        Cursor cursorQuery = null;
        try {
            cursorQuery = getReadableDatabase().query("questionnaire", new String[]{"type", "title", "url", "max_score", "max_desc", "min_desc", "success_tip", "fail_tip", "max_show", "show_count", "show_timestamp"}, "questionnaire_id=?", new String[]{str}, null, null, null);
            while (cursorQuery != null && cursorQuery.moveToNext()) {
                questionClientData.setType(cursorQuery.getInt(0));
                questionClientData.setTitle(cursorQuery.getString(1));
                questionClientData.setUrl(cursorQuery.getString(2));
                questionClientData.setMaxScore(cursorQuery.getInt(3));
                questionClientData.setMaxDesc(cursorQuery.getString(4));
                questionClientData.setMinDesc(cursorQuery.getString(5));
                questionClientData.setSuccessTip(cursorQuery.getString(6));
                questionClientData.setFailTip(cursorQuery.getString(7));
                questionClientData.setMxShow(cursorQuery.getInt(8));
                questionClientData.setShowCount(cursorQuery.getInt(9));
                questionClientData.setShowTimestamp(cursorQuery.getInt(10));
            }
            Log.d("QuestionnaireDBHelper", "getQuestionnaireData, clientData: " + questionClientData);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cursorQuery != null && !cursorQuery.isClosed()) {
                cursorQuery.close();
            }
        }
        return questionClientData;
    }

    public void h(List list) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        writableDatabase.beginTransaction();
        try {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    QuestionClientData questionClientData = (QuestionClientData) it.next();
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("questionnaire_id", questionClientData.getQuestionnaireId());
                    contentValues.put("type", Integer.valueOf(questionClientData.getType()));
                    contentValues.put("title", questionClientData.getTitle());
                    contentValues.put("url", questionClientData.getUrl());
                    contentValues.put("max_score", Integer.valueOf(questionClientData.getMaxScore()));
                    contentValues.put("max_desc", questionClientData.getMaxDesc());
                    contentValues.put("min_desc", questionClientData.getMinDesc());
                    contentValues.put("success_tip", questionClientData.getSuccessTip());
                    contentValues.put("fail_tip", questionClientData.getFailTip());
                    contentValues.put("trigger_cond", questionClientData.getTriggerCond());
                    contentValues.put("max_show", Integer.valueOf(questionClientData.getMaxShow()));
                    contentValues.put("show_count", Integer.valueOf(questionClientData.getShowCount()));
                    contentValues.put("show_timestamp", Long.valueOf(questionClientData.getShowTimestamp()));
                    writableDatabase.insert("questionnaire", "max_show", contentValues);
                }
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public final void k(SQLiteDatabase sQLiteDatabase) {
        Log.d("QuestionnaireDBHelper", "setupTables");
        sQLiteDatabase.execSQL("CREATE TABLE questionnaire(_id INTEGER PRIMARY KEY AUTOINCREMENT,questionnaire_id TEXT,type INTEGER,title TEXT,url TEXT,max_score INTEGER,max_desc TEXT,min_desc TEXT,success_tip TEXT,fail_tip TEXT,trigger_cond TEXT,max_show INTEGER,show_count INTEGER,show_timestamp INTEGER)");
    }

    public void n(String str, int i) {
        Log.d("QuestionnaireDBHelper", "updateShowCount, count: " + i);
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("show_count", Integer.valueOf(i));
            writableDatabase.update("questionnaire", contentValues, "questionnaire_id=?", new String[]{str});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void o(String str, long j) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("show_timestamp", Long.valueOf(j));
            writableDatabase.update("questionnaire", contentValues, "questionnaire_id=?", new String[]{str});
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Log.d("QuestionnaireDBHelper", "onCreate");
        k(sQLiteDatabase);
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("QuestionnaireDBHelper", "Detected schema version '" + i + "'. Index needs to be rebuilt for schema version '" + i2 + "'.");
        b(sQLiteDatabase);
        k(sQLiteDatabase);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.d("QuestionnaireDBHelper", "onUpgrade: ");
        if (i < 1) {
            Log.w("QuestionnaireDBHelper", "Detected schema version '" + i + "'. Index needs to be rebuilt for schema version '" + i2 + "'.");
            b(sQLiteDatabase);
            k(sQLiteDatabase);
        }
    }
}

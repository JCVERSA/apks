package com.facebook.biddingkit.logging;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

class EventLogDatabaseAdapter {
    private static final String DATABASE_NAME = "EventLogsDatabase.db";
    private static final int DATABASE_VERSION = 1;
    private static volatile EventLogDatabaseAdapter INSTANCE = null;
    public static final String TABLE_NAME = "EVENT_LOGS";
    private static final String TAG = "EventLogDatabaseAdapter";
    private final DataBaseHelper mDbHelper;

    public EventLogDatabaseAdapter(Context context) {
        this.mDbHelper = new DataBaseHelper(context, DATABASE_NAME, null, 1);
    }

    @SuppressLint({"CatchGeneralException"})
    public static void deleteEntry(String str) {
        try {
            getInstance().getDatabase().delete(TABLE_NAME, "ID=?", new String[]{str});
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed deleting entry", th);
        }
    }

    public static EventLogDatabaseAdapter getInstance() {
        return INSTANCE;
    }

    @SuppressLint({"CatchGeneralException"})
    public static int getRowCount() {
        try {
            SQLiteDatabase database = getInstance().getDatabase();
            Cursor cursorQuery = database.query(TABLE_NAME, null, null, null, null, null, null);
            database.close();
            int count = cursorQuery.getCount();
            cursorQuery.close();
            return count;
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed getting Row Count", th);
            return -1;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static List<EventLog> getRows(int i) {
        LinkedList linkedList = new LinkedList();
        try {
            Cursor cursorQuery = getInstance().getDatabase().query(TABLE_NAME, null, null, null, null, null, null, null);
            int columnIndex = cursorQuery.getColumnIndex("exception");
            int columnIndex2 = cursorQuery.getColumnIndex("auction_id");
            int columnIndex3 = cursorQuery.getColumnIndex(DataTypes.OBJ_ID);
            int columnIndex4 = cursorQuery.getColumnIndex("bidder_data");
            while (cursorQuery.moveToNext() && i > 0) {
                EventLog eventLog = new EventLog();
                eventLog.addException(cursorQuery.getString(columnIndex));
                eventLog.addAuctionId(cursorQuery.getString(columnIndex2));
                eventLog.addDatabaseId(cursorQuery.getString(columnIndex3));
                JSONObject jSONObject = new JSONObject(cursorQuery.getString(columnIndex4));
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    eventLog.addResultData(next, jSONObject2.optString("result"));
                    eventLog.addCpmCentsData(next, jSONObject2.optString("cpm_cents"));
                    eventLog.addError(next, jSONObject2.optString("error"));
                    eventLog.addLatencyMs(next, jSONObject2.optString("latency_ms"));
                }
                linkedList.add(eventLog);
                i--;
            }
            cursorQuery.close();
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed getting rows", th);
        }
        return linkedList;
    }

    public static void initialize(Context context) {
        if (INSTANCE == null) {
            synchronized (EventLogDatabaseAdapter.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new EventLogDatabaseAdapter(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void insertEntry(EventLog eventLog) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("auction_id", eventLog.getAuctionId());
            contentValues.put("exception", eventLog.getException());
            contentValues.put("bidder_data", eventLog.getAllBidderJson().toString());
            SQLiteDatabase database = getInstance().getDatabase();
            database.insert(TABLE_NAME, null, contentValues);
            database.close();
        } catch (Exception e) {
            BkLog.d(TAG, "Failed inserting an entry", e);
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void truncateTable() {
        try {
            SQLiteDatabase database = getInstance().getDatabase();
            database.delete(TABLE_NAME, "1", null);
            database.close();
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed to truncate table", th);
        }
    }

    public void close() {
        SQLiteDatabase database = getDatabase();
        if (database != null) {
            database.close();
        }
    }

    public void finalize() throws Throwable {
        close();
        super.finalize();
    }

    @SuppressLint({"CatchGeneralException"})
    public SQLiteDatabase getDatabase() {
        try {
            return this.mDbHelper.getWritableDatabase();
        } catch (Throwable th) {
            BkLog.d(TAG, "Failed getting Writable Database", th);
            return null;
        }
    }
}

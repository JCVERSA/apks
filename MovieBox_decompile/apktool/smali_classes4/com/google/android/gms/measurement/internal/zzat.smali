.class final Lcom/google/android/gms/measurement/internal/zzat;
.super Lcom/google/android/gms/internal/measurement/zzck;
.source "source.java"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzal;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p3, p1, v0}, Lcom/google/android/gms/internal/measurement/zzck;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zznl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/32 v1, 0x36ee80

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zznl;->zza(J)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zznl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zznl;->zzb()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "Opening the database failed, dropping and recreating it"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zza()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "google_app_measurement.db"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v2, "Failed to delete corrupted db file"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zza(Lcom/google/android/gms/measurement/internal/zzal;)Lcom/google/android/gms/measurement/internal/zznl;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->zza()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v2, "Failed to open freshly created database"

    .line 104
    .line 105
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    .line 110
    .line 111
    const-string v1, "Database open failed"

    .line 112
    .line 113
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzae()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const-string v3, "events"

    .line 14
    .line 15
    const-string v4, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 16
    .line 17
    move-object v2, p1

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v5, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count"

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v3, "events_snapshot"

    .line 31
    .line 32
    const-string v4, "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;"

    .line 33
    .line 34
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v5, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 44
    .line 45
    const-string v3, "conditional_properties"

    .line 46
    .line 47
    const-string v4, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 48
    .line 49
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v5, "app_id,name,set_timestamp,value"

    .line 59
    .line 60
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzak()[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const-string v3, "user_attributes"

    .line 65
    .line 66
    const-string v4, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 67
    .line 68
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v5, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 78
    .line 79
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzac()[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v3, "apps"

    .line 84
    .line 85
    const-string v4, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v5, "app_id,bundle_end_timestamp,data"

    .line 97
    .line 98
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzah()[Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    const-string v3, "queue"

    .line 103
    .line 104
    const-string v4, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 105
    .line 106
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v5, "app_id,metadata_fingerprint,metadata"

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    const-string v3, "raw_events_metadata"

    .line 119
    .line 120
    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 121
    .line 122
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v5, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 132
    .line 133
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzai()[Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    const-string v3, "raw_events"

    .line 138
    .line 139
    const-string v4, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 140
    .line 141
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v5, "app_id,audience_id,filter_id,event_name,data"

    .line 151
    .line 152
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzaf()[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    const-string v3, "event_filters"

    .line 157
    .line 158
    const-string v4, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 159
    .line 160
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v5, "app_id,audience_id,filter_id,property_name,data"

    .line 170
    .line 171
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzag()[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    const-string v3, "property_filters"

    .line 176
    .line 177
    const-string v4, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 178
    .line 179
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const-string v5, "app_id,audience_id,current_results"

    .line 189
    .line 190
    const/4 v6, 0x0

    .line 191
    const-string v3, "audience_filter_values"

    .line 192
    .line 193
    const-string v4, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 194
    .line 195
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v5, "app_id,first_open_count"

    .line 205
    .line 206
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzab()[Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    const-string v3, "app2"

    .line 211
    .line 212
    const-string v4, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 213
    .line 214
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const-string v5, "app_id,event_id,children_to_process,main_event"

    .line 224
    .line 225
    const/4 v6, 0x0

    .line 226
    const-string v3, "main_event_params"

    .line 227
    .line 228
    const-string v4, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 229
    .line 230
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const-string v5, "app_id,parameters"

    .line 240
    .line 241
    const-string v3, "default_event_params"

    .line 242
    .line 243
    const-string v4, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 244
    .line 245
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    const-string v5, "app_id,consent_state"

    .line 255
    .line 256
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzad()[Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    const-string v3, "consent_settings"

    .line 261
    .line 262
    const-string v4, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 263
    .line 264
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpn;->zza()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_0

    .line 272
    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    const-string v5, "app_id,trigger_uri,source,timestamp_millis"

    .line 280
    .line 281
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzal;->zzaj()[Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    const-string v3, "trigger_uris"

    .line 286
    .line 287
    const-string v4, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 288
    .line 289
    move-object v2, p1

    .line 290
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzat;->zza:Lcom/google/android/gms/measurement/internal/zzal;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzja;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v5, "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp"

    .line 300
    .line 301
    const/4 v6, 0x0

    .line 302
    const-string v3, "upload_queue"

    .line 303
    .line 304
    const-string v4, "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );"

    .line 305
    .line 306
    move-object v2, p1

    .line 307
    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzgo;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

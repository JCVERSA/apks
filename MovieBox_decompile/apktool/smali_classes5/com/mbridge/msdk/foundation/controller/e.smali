.class public Lcom/mbridge/msdk/foundation/controller/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/controller/e$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/mbridge/msdk/foundation/controller/e$a;

.field private final m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->a:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->d:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->e:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->f:Z

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/e;->a()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "IABTCF_TCString"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/controller/e;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_gdprApplies"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/controller/e;->a(I)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_PurposeConsents"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/controller/e;->c(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_VendorConsents"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/controller/e;->e(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->m:Landroid/content/SharedPreferences;

    const-string v1, "IABTCF_AddtlConsent"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/controller/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    const-string v0, "[01]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .line 17
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x31

    if-ne p2, p1, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->e:I

    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/controller/e$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->l:Lcom/mbridge/msdk/foundation/controller/e$a;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->d:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/e;->j:Z

    return-void

    .line 5
    :cond_0
    sget v0, Lcom/mbridge/msdk/MBridgeConstans;->GOOGLE_ATP_ID:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 6
    iput-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/e;->k:Z

    return-void

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/e;->k:Z

    .line 8
    :try_start_0
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 9
    array-length v2, v0

    if-le v2, v1, :cond_3

    .line 10
    aget-object v0, v0, v1

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iput-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/e;->j:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 13
    :cond_2
    sget v0, Lcom/mbridge/msdk/MBridgeConstans;->GOOGLE_ATP_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TCStringManager"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/e;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->g:Z

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/e;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->h:Z

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 4

    .line 4
    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/controller/e;->a(Z)V

    .line 6
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->f:Z

    return v0

    .line 7
    :cond_0
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->VERIFY_ATP_CONSENT:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->k:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9
    :goto_0
    iget-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/e;->i:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->h:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/controller/e;->a(Z)V

    goto :goto_3

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->i:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->g:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->h:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/controller/e;->a(Z)V

    .line 12
    :goto_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->f:Z

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x363

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/e;->a(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/e;->i:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "IABTCF_PurposeConsents"

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const-string v4, "IABTCF_gdprApplies"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const-string v6, "IABTCF_TCString"

    .line 19
    .line 20
    const/4 v7, 0x4

    .line 21
    const-string v8, "IABTCF_AddtlConsent"

    .line 22
    .line 23
    const/4 v9, 0x3

    .line 24
    const-string v10, "IABTCF_VendorConsents"

    .line 25
    .line 26
    sparse-switch v0, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :sswitch_0
    :try_start_1
    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    move p2, v9

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :sswitch_1
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_0

    .line 46
    .line 47
    move p2, v7

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_0

    .line 54
    .line 55
    move p2, v5

    .line 56
    goto :goto_1

    .line 57
    :sswitch_3
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    move p2, v3

    .line 64
    goto :goto_1

    .line 65
    :sswitch_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    if-eqz p2, :cond_0

    .line 70
    .line 71
    move p2, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    const/4 p2, -0x1

    .line 74
    :goto_1
    const-string v0, ""

    .line 75
    .line 76
    if-eqz p2, :cond_5

    .line 77
    .line 78
    if-eq p2, v3, :cond_4

    .line 79
    .line 80
    if-eq p2, v1, :cond_3

    .line 81
    .line 82
    if-eq p2, v9, :cond_2

    .line 83
    .line 84
    if-eq p2, v7, :cond_1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :try_start_2
    invoke-interface {p1, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->b(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    invoke-interface {p1, v10, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->e(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->c(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->a(I)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/e;->d(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/e;->l:Lcom/mbridge/msdk/foundation/controller/e$a;

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-interface {p1}, Lcom/mbridge/msdk/foundation/controller/e$a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_4

    .line 134
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string p2, "TCStringManager"

    .line 139
    .line 140
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_4
    return-void

    .line 144
    nop

    .line 145
    :sswitch_data_0
    .sparse-switch
        -0x7781843b -> :sswitch_4
        0x4fc43fb -> :sswitch_3
        0x48a6de12 -> :sswitch_2
        0x500b40d3 -> :sswitch_1
        0x56705a53 -> :sswitch_0
    .end sparse-switch
.end method

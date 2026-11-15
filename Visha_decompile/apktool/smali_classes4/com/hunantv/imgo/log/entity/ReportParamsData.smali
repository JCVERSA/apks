.class public Lcom/hunantv/imgo/log/entity/ReportParamsData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hunantv/imgo/log/entity/ReportParamsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hunantv/imgo/log/entity/ReportParamsData$1;

    invoke-direct {v0}, Lcom/hunantv/imgo/log/entity/ReportParamsData$1;-><init>()V

    sput-object v0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->i:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->k:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->m:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->n:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->o:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->p:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->q:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->r:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->s:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->t:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->u:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->v:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->w:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->x:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->y:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/hunantv/imgo/log/entity/ReportParamsData$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a([B)Lcom/hunantv/imgo/log/entity/ReportParamsData;
    .locals 3

    .line 45
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 47
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    sget-object p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->a:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public a()Lcom/mgtv/task/http/MultiParts;
    .locals 3

    .line 1
    new-instance v0, Lcom/mgtv/task/http/MultiParts;

    invoke-direct {v0}, Lcom/mgtv/task/http/MultiParts;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    const-string v1, "appVersion"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    const-string v1, "company"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    const-string v1, "platformType"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    const-string v1, "platformVersion"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 13
    const-string v1, "account"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 15
    const-string v1, "uid"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 17
    const-string v1, "cpuInfo"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 19
    const-string v1, "model"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 21
    const-string v1, "networkType"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 23
    const-string v1, "playHistory"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 24
    :cond_a
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 25
    const-string v1, "questionInfo"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 26
    :cond_b
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 27
    const-string v1, "questionDesc"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 28
    :cond_c
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 29
    const-string v1, "contactInfo"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 30
    :cond_d
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 31
    const-string v1, "sdk_version"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 32
    :cond_e
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 33
    const-string v1, "mp_type"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 34
    :cond_f
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 35
    const-string v1, "mp_version"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 36
    :cond_10
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 37
    const-string v1, "decoder_type"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 38
    :cond_11
    const-string v1, "is_soft"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 39
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 40
    const-string v1, "chip"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 41
    :cond_12
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 42
    const-string v1, "subType"

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    .line 43
    :cond_13
    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 44
    const-string v1, "src"

    iget-object p0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/task/http/MultiParts;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/mgtv/task/http/MultiParts;

    :cond_14
    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->q:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->p:Ljava/lang/String;

    return-void
.end method

.method public b()[B
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/hunantv/imgo/log/entity/ReportParamsData;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->p:Ljava/lang/String;

    return-object p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->q:I

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReportParamsData{appVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", company=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platformType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", platformVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", account=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cpuInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", model=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", networkType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playHistory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", questionInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", questionDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contactInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", retryTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sdk_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mp_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mp_version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", is_soft=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", decoder_type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", chip=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", src=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->y:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/imgo/log/entity/ReportParamsData;->y:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

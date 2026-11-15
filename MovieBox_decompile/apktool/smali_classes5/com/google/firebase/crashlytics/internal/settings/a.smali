.class Lcom/google/firebase/crashlytics/internal/settings/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/g;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static b(Lcom/google/firebase/crashlytics/internal/common/c0;)Lcom/google/firebase/crashlytics/internal/settings/c;
    .locals 12

    .line 1
    new-instance v3, Lcom/google/firebase/crashlytics/internal/settings/c$b;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v3, v0, v1}, Lcom/google/firebase/crashlytics/internal/settings/c$b;-><init>(II)V

    .line 7
    .line 8
    .line 9
    new-instance v4, Lcom/google/firebase/crashlytics/internal/settings/c$a;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v4, v0, v1, v1}, Lcom/google/firebase/crashlytics/internal/settings/c$a;-><init>(ZZZ)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/c0;->a()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const p0, 0x36ee80

    .line 21
    .line 22
    .line 23
    int-to-long v5, p0

    .line 24
    add-long v1, v0, v5

    .line 25
    .line 26
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/16 v6, 0xe10

    .line 30
    .line 31
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 32
    .line 33
    const-wide v9, 0x3ff3333333333333L    # 1.2

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    const/16 v11, 0x3c

    .line 39
    .line 40
    move-object v0, p0

    .line 41
    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/crashlytics/internal/settings/c;-><init>(JLcom/google/firebase/crashlytics/internal/settings/c$b;Lcom/google/firebase/crashlytics/internal/settings/c$a;IIDDI)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/common/c0;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/c;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/settings/a;->b(Lcom/google/firebase/crashlytics/internal/common/c0;)Lcom/google/firebase/crashlytics/internal/settings/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

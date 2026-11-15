.class public final Lcom/google/firebase/sessions/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/sessions/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/f$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/firebase/sessions/f$a;


# instance fields
.field private final a:Lkc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/sessions/f;->b:Lcom/google/firebase/sessions/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lkc/b;)V
    .locals 1

    .line 1
    const-string v0, "transportFactoryProvider"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/sessions/f;->a:Lkc/b;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/sessions/f;Lcom/google/firebase/sessions/u;)[B
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/sessions/f;->c(Lcom/google/firebase/sessions/u;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c(Lcom/google/firebase/sessions/u;)[B
    .locals 3

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/v;->a:Lcom/google/firebase/sessions/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/sessions/v;->c()Ldc/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ldc/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Session Event Type: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/sessions/u;->b()Lcom/google/firebase/sessions/EventType;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    sget-object p1, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/firebase/sessions/u;)V
    .locals 5

    .line 1
    const-string v0, "sessionEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/sessions/f;->a:Lkc/b;

    .line 7
    .line 8
    invoke-interface {v0}, Lkc/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lt8/i;

    .line 13
    .line 14
    const-string v1, "json"

    .line 15
    .line 16
    invoke-static {v1}, Lt8/c;->b(Ljava/lang/String;)Lt8/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/google/firebase/sessions/e;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/google/firebase/sessions/e;-><init>(Lcom/google/firebase/sessions/f;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "FIREBASE_APPQUALITY_SESSION"

    .line 26
    .line 27
    const-class v4, Lcom/google/firebase/sessions/u;

    .line 28
    .line 29
    invoke-interface {v0, v3, v4, v1, v2}, Lt8/i;->b(Ljava/lang/String;Ljava/lang/Class;Lt8/c;Lt8/g;)Lt8/h;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {p1}, Lt8/d;->f(Ljava/lang/Object;)Lt8/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {v0, p1}, Lt8/h;->a(Lt8/d;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.class public Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Lcom/google/firebase/remoteconfig/internal/f;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->a:Ljava/util/Date;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->c:Lcom/google/firebase/remoteconfig/internal/f;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->d:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Ljava/util/Date;Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static b(Lcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->h()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2, p0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static c(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;-><init>(Ljava/util/Date;ILcom/google/firebase/remoteconfig/internal/f;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public d()Lcom/google/firebase/remoteconfig/internal/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->c:Lcom/google/firebase/remoteconfig/internal/f;

    .line 2
    .line 3
    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler$a;->b:I

    .line 2
    .line 3
    return v0
.end method

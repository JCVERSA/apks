.class Lcom/google/firebase/crashlytics/ndk/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqb/h;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->f:Ljava/io/File;

    .line 4
    .line 5
    return-object v0
.end method

.method public b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f$c;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->a:Lcom/google/firebase/crashlytics/ndk/f$c;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f$c;->a:Ljava/io/File;

    .line 6
    .line 7
    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->c:Ljava/io/File;

    .line 4
    .line 5
    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->e:Ljava/io/File;

    .line 4
    .line 5
    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->g:Ljava/io/File;

    .line 4
    .line 5
    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/g;->a:Lcom/google/firebase/crashlytics/ndk/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/firebase/crashlytics/ndk/f;->d:Ljava/io/File;

    .line 4
    .line 5
    return-object v0
.end method

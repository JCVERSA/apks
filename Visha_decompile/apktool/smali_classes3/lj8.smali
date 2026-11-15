.class public Llj8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llj8$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public final c:Lyb7;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lyb7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj8;->a:Ljava/util/Map;

    iput-object p2, p0, Llj8;->b:Ljava/util/Map;

    iput-object p3, p0, Llj8;->c:Lyb7;

    return-void
.end method

.method public static a()Llj8$a;
    .locals 1

    new-instance v0, Llj8$a;

    invoke-direct {v0}, Llj8$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 3

    new-instance v0, Lcom/google/firebase/encoders/proto/b;

    iget-object v1, p0, Llj8;->a:Ljava/util/Map;

    iget-object v2, p0, Llj8;->b:Ljava/util/Map;

    iget-object p0, p0, Llj8;->c:Lyb7;

    invoke-direct {v0, p2, v1, v2, p0}, Lcom/google/firebase/encoders/proto/b;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lyb7;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/encoders/proto/b;->q(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/b;

    return-void
.end method

.method public c(Ljava/lang/Object;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Llj8;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.class public final Llj8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llj8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Lyb7;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;

.field public c:Lyb7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkj8;

    invoke-direct {v0}, Lkj8;-><init>()V

    sput-object v0, Llj8$a;->d:Lyb7;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llj8$a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llj8$a;->b:Ljava/util/Map;

    sget-object v0, Llj8$a;->d:Lyb7;

    iput-object v0, p0, Llj8$a;->c:Lyb7;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Lzb7;)V
    .locals 0

    invoke-static {p0, p1}, Llj8$a;->e(Ljava/lang/Object;Lzb7;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Object;Lzb7;)V
    .locals 2

    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Lyb7;)Lfa3;
    .locals 0

    invoke-virtual {p0, p1, p2}, Llj8$a;->f(Ljava/lang/Class;Lyb7;)Llj8$a;

    move-result-object p0

    return-object p0
.end method

.method public c()Llj8;
    .locals 4

    new-instance v0, Llj8;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Llj8$a;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Llj8$a;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Llj8$a;->c:Lyb7;

    invoke-direct {v0, v1, v2, p0}, Llj8;-><init>(Ljava/util/Map;Ljava/util/Map;Lyb7;)V

    return-object v0
.end method

.method public d(Lze1;)Llj8$a;
    .locals 0

    invoke-interface {p1, p0}, Lze1;->a(Lfa3;)V

    return-object p0
.end method

.method public f(Ljava/lang/Class;Lyb7;)Llj8$a;
    .locals 1

    iget-object v0, p0, Llj8$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Llj8$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

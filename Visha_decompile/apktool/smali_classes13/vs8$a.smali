.class public final Lvs8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvs8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public d:[B

.field public e:Lorg/schabi/newpipe/extractor/localization/Localization;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lvs8$a;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvs8$a;->f:Z

    return-void
.end method

.method public static bridge synthetic a(Lvs8$a;)Z
    .locals 0

    iget-boolean p0, p0, Lvs8$a;->f:Z

    return p0
.end method

.method public static bridge synthetic b(Lvs8$a;)[B
    .locals 0

    iget-object p0, p0, Lvs8$a;->d:[B

    return-object p0
.end method

.method public static bridge synthetic c(Lvs8$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lvs8$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic d(Lvs8$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvs8$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lvs8$a;)Lorg/schabi/newpipe/extractor/localization/Localization;
    .locals 0

    iget-object p0, p0, Lvs8$a;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method public static bridge synthetic f(Lvs8$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvs8$a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public g()Lvs8;
    .locals 2

    new-instance v0, Lvs8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvs8;-><init>(Lvs8$a;Lws8;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lvs8$a;
    .locals 1

    const-string v0, "GET"

    iput-object v0, p0, Lvs8$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lvs8$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lvs8$a;
    .locals 1

    const-string v0, "HEAD"

    iput-object v0, p0, Lvs8$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lvs8$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/util/Map;)Lvs8$a;
    .locals 1

    iget-object v0, p0, Lvs8$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lvs8$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public k(Lorg/schabi/newpipe/extractor/localization/Localization;)Lvs8$a;
    .locals 0

    iput-object p1, p0, Lvs8$a;->e:Lorg/schabi/newpipe/extractor/localization/Localization;

    return-object p0
.end method

.method public l(Ljava/lang/String;[B)Lvs8$a;
    .locals 1

    const-string v0, "POST"

    iput-object v0, p0, Lvs8$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lvs8$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lvs8$a;->d:[B

    return-object p0
.end method

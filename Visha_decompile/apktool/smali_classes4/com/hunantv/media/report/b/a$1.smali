.class Lcom/hunantv/media/report/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[B

.field final synthetic e:Z

.field final synthetic f:Lcom/hunantv/media/report/b/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BZLcom/hunantv/media/report/b/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/b/a$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/report/b/a$1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/hunantv/media/report/b/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/hunantv/media/report/b/a$1;->d:[B

    iput-boolean p5, p0, Lcom/hunantv/media/report/b/a$1;->e:Z

    iput-object p6, p0, Lcom/hunantv/media/report/b/a$1;->f:Lcom/hunantv/media/report/b/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/hunantv/media/report/b/a$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hunantv/media/report/b/a$1;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/hunantv/media/report/b/a$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/hunantv/media/report/b/a$1;->d:[B

    iget-boolean v5, p0, Lcom/hunantv/media/report/b/a$1;->e:Z

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hunantv/media/report/b/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[BIZI)Lcom/hunantv/media/report/b/a$b;

    move-result-object v0

    iget-object p0, p0, Lcom/hunantv/media/report/b/a$1;->f:Lcom/hunantv/media/report/b/a$a;

    invoke-static {v0, p0}, Lcom/hunantv/media/report/b/a;->a(Lcom/hunantv/media/report/b/a$b;Lcom/hunantv/media/report/b/a$a;)V

    return-void
.end method

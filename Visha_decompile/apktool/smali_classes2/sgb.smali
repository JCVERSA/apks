.class public final synthetic Lsgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lrv4;

.field public final synthetic f:Lww4;

.field public final synthetic g:Z

.field public final synthetic h:Lugb;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsgb;->b:Ljava/lang/String;

    iput-object p2, p0, Lsgb;->c:Ljava/util/Map;

    iput-object p3, p0, Lsgb;->d:Ljava/util/Map;

    iput-object p4, p0, Lsgb;->e:Lrv4;

    iput-object p5, p0, Lsgb;->f:Lww4;

    iput-boolean p6, p0, Lsgb;->g:Z

    iput-object p7, p0, Lsgb;->h:Lugb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lsgb;->b:Ljava/lang/String;

    iget-object v1, p0, Lsgb;->c:Ljava/util/Map;

    iget-object v2, p0, Lsgb;->d:Ljava/util/Map;

    iget-object v3, p0, Lsgb;->e:Lrv4;

    iget-object v4, p0, Lsgb;->f:Lww4;

    iget-boolean v5, p0, Lsgb;->g:Z

    iget-object v6, p0, Lsgb;->h:Lugb;

    invoke-static/range {v0 .. v6}, Lugb;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lrv4;Lww4;ZLugb;)V

    return-void
.end method

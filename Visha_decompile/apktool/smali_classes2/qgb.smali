.class public final synthetic Lqgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;

.field public final synthetic e:Lugb;

.field public final synthetic f:Lww4;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqgb;->b:Ljava/lang/String;

    iput-object p2, p0, Lqgb;->c:Ljava/util/Map;

    iput-object p3, p0, Lqgb;->d:Ljava/util/Map;

    iput-object p4, p0, Lqgb;->e:Lugb;

    iput-object p5, p0, Lqgb;->f:Lww4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lqgb;->b:Ljava/lang/String;

    iget-object v1, p0, Lqgb;->c:Ljava/util/Map;

    iget-object v2, p0, Lqgb;->d:Ljava/util/Map;

    iget-object v3, p0, Lqgb;->e:Lugb;

    iget-object p0, p0, Lqgb;->f:Lww4;

    invoke-static {v0, v1, v2, v3, p0}, Lugb;->f(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lugb;Lww4;)V

    return-void
.end method

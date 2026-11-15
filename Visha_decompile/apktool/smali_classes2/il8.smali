.class public final synthetic Lil8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil8;->b:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Lil8;->c:Ljava/lang/String;

    iput-object p3, p0, Lil8;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lil8;->b:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Lil8;->c:Ljava/lang/String;

    iget-object p0, p0, Lil8;->d:Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->e(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

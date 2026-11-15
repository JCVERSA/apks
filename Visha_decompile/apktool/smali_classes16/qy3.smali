.class public final synthetic Lqy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iput-object p2, p0, Lqy3;->c:Le74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    iget-object p0, p0, Lqy3;->c:Le74;

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->d(Lcom/transsion/widgetslib/flipper/FlipperLayout;Le74;)V

    return-void
.end method

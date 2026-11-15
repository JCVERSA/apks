.class public final synthetic Lpy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/flipper/FlipperLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lpy3;->b:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->a(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

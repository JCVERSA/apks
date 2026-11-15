.class public final synthetic Liy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/ClockView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/ClockView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liy0;->b:Lcom/transsion/widgets/ClockView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Liy0;->b:Lcom/transsion/widgets/ClockView;

    invoke-static {p0}, Lcom/transsion/widgets/ClockView;->a(Lcom/transsion/widgets/ClockView;)V

    return-void
.end method

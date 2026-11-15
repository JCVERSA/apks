.class public final synthetic Lcom/transsion/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/ClockView$1;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/ClockView$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgets/a;->b:Lcom/transsion/widgets/ClockView$1;

    iput-object p2, p0, Lcom/transsion/widgets/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/a;->b:Lcom/transsion/widgets/ClockView$1;

    iget-object p0, p0, Lcom/transsion/widgets/a;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/widgets/ClockView$1;->c(Lcom/transsion/widgets/ClockView$1;Ljava/lang/String;)V

    return-void
.end method

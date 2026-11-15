.class public final synthetic Lgc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/EqDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgc3;->a:Lcom/transsion/audio/widgets/EqDialog;

    return-void
.end method


# virtual methods
.method public final scrollTo(I)V
    .locals 0

    iget-object p0, p0, Lgc3;->a:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/EqDialog;->f0(Lcom/transsion/audio/widgets/EqDialog;I)V

    return-void
.end method

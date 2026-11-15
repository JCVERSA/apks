.class public final synthetic Lyu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LrcViewNew;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    invoke-static {p0}, Lcom/transsion/audio/widgets/LrcViewNew;->d(Lcom/transsion/audio/widgets/LrcViewNew;)V

    return-void
.end method

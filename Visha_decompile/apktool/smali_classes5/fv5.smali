.class public final synthetic Lfv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LyricLocalSelectView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv5;->b:Lcom/transsion/audio/widgets/LyricLocalSelectView;

    iput-object p2, p0, Lfv5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfv5;->b:Lcom/transsion/audio/widgets/LyricLocalSelectView;

    iget-object p0, p0, Lfv5;->c:Ljava/lang/String;

    check-cast p1, Lcom/transsion/audio/widgets/LyricLocalSelectView;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/LyricLocalSelectView;->c(Lcom/transsion/audio/widgets/LyricLocalSelectView;Ljava/lang/String;Lcom/transsion/audio/widgets/LyricLocalSelectView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

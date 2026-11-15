.class public final synthetic Lz58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment$i;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz58;->b:Lcom/transsion/audio/fragments/PlayListFragment$i;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz58;->b:Lcom/transsion/audio/fragments/PlayListFragment$i;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$i;->b(Lcom/transsion/audio/fragments/PlayListFragment$i;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

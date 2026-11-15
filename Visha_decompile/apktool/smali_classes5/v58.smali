.class public final synthetic Lv58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment$g;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv58;->b:Lcom/transsion/audio/fragments/PlayListFragment$g;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv58;->b:Lcom/transsion/audio/fragments/PlayListFragment$g;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment$g;->a(Lcom/transsion/audio/fragments/PlayListFragment$g;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

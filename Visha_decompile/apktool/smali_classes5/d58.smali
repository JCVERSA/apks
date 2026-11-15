.class public final synthetic Ld58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld58;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld58;->b:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->k2(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

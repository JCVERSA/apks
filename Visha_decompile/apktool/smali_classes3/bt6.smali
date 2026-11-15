.class public final synthetic Lbt6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo74;


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Multimaps$a$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbt6;->b:Lcom/google/common/collect/Multimaps$a$a;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbt6;->b:Lcom/google/common/collect/Multimaps$a$a;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps$a$a;->c(Lcom/google/common/collect/Multimaps$a$a;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

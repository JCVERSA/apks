.class public final synthetic Lp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp;->b:Ljava/util/List;

    iput-object p2, p0, Lp;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lp;->b:Ljava/util/List;

    iget-object p0, p0, Lp;->c:Ljava/util/ArrayList;

    check-cast p1, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-static {v0, p0, p1}, Lcom/transsion/visha/ai/AIService;->c(Ljava/util/List;Ljava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

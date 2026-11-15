.class public final synthetic Lni1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lni1;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iput-boolean p2, p0, Lni1;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lni1;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iget-boolean p0, p0, Lni1;->c:Z

    check-cast p1, Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->j2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;ZLcom/transsion/tools/covert/fragments/ConvertedFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Loi1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/covert/fragments/ConvertedFragment;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi1;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iput-wide p2, p0, Loi1;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Loi1;->b:Lcom/transsion/tools/covert/fragments/ConvertedFragment;

    iget-wide v1, p0, Loi1;->c:J

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/tools/covert/fragments/ConvertedFragment;->k2(Lcom/transsion/tools/covert/fragments/ConvertedFragment;JLjava/util/List;)V

    return-void
.end method

.class public final synthetic Lw49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/SearchFileView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw49;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    iput-object p2, p0, Lw49;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lw49;->b:Lcom/transsion/playercommon/widgets/SearchFileView;

    iget-object p0, p0, Lw49;->c:Ljava/lang/String;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/widgets/SearchFileView;->c(Lcom/transsion/playercommon/widgets/SearchFileView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

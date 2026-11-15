.class public final synthetic Ls68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lk78;

.field public final synthetic c:Lcom/transsion/dbdata/database/PlayList;


# direct methods
.method public synthetic constructor <init>(Lk78;Lcom/transsion/dbdata/database/PlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls68;->b:Lk78;

    iput-object p2, p0, Ls68;->c:Lcom/transsion/dbdata/database/PlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ls68;->b:Lk78;

    iget-object p0, p0, Ls68;->c:Lcom/transsion/dbdata/database/PlayList;

    invoke-static {v0, p0, p1}, Lk78;->y(Lk78;Lcom/transsion/dbdata/database/PlayList;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

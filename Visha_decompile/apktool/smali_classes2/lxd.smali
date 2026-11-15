.class public final Llxd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llxd;

.field public static b:Ljava/lang/Integer;

.field public static c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llxd;

    invoke-direct {v0}, Llxd;-><init>()V

    sput-object v0, Llxd;->a:Llxd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final c(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    if-eqz p0, :cond_0

    sput-object p0, Llxd;->b:Ljava/lang/Integer;

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "show_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lo9;->p(Ljava/lang/String;I)V

    :cond_0
    if-eqz p1, :cond_1

    sput-object p1, Llxd;->c:Ljava/lang/Integer;

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "click_data_sync_time_interval"

    invoke-virtual {v0, v2, v1}, Lo9;->p(Ljava/lang/String;I)V

    :cond_1
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDataSyncTimeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\uff0cclickDataSyncTimeInterval = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AttrDataManager"

    invoke-virtual {v0, p1, p0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->h()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget-object p0, Llxd;->c:Ljava/lang/Integer;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string v1, "click_data_sync_time_interval"

    invoke-virtual {p0, v1, v0}, Lo9;->g(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Llxd;->c:Ljava/lang/Integer;

    :cond_0
    sget-object p0, Llxd;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public final b(Le74;Lc74;Lc74;)V
    .locals 3

    invoke-virtual {p0}, Llxd;->a()I

    move-result p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickDataSyncAction timeInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AttrDataManager"

    invoke-virtual {v0, v2, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p0, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lc74;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lc74;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d()I
    .locals 2

    sget-object p0, Llxd;->b:Ljava/lang/Integer;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    const-string/jumbo v1, "show_data_sync_time_interval"

    invoke-virtual {p0, v1, v0}, Lo9;->g(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Llxd;->b:Ljava/lang/Integer;

    :cond_0
    sget-object p0, Llxd;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

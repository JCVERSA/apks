.class public Lwn2;
.super Liga;
.source "SourceFile"


# instance fields
.field public final d:Liq0;

.field public final e:Liga$a;


# direct methods
.method public constructor <init>(Llx7;Liq0;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Liga;-><init>(Llx7;Liq0;)V

    .line 7
    iput-object p2, p0, Lwn2;->d:Liq0;

    .line 8
    new-instance p1, Lvn2;

    invoke-direct {p1}, Lvn2;-><init>()V

    iput-object p1, p0, Lwn2;->e:Liga$a;

    return-void
.end method

.method public synthetic constructor <init>(Llx7;Liq0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    new-instance p2, Liq0;

    .line 2
    new-instance p3, Lzy4;

    invoke-direct {p3}, Lzy4;-><init>()V

    .line 3
    sget-object p4, Lkga;->a:Lkga$a;

    invoke-virtual {p4}, Lkga$a;->a()Lkga;

    move-result-object p4

    .line 4
    invoke-direct {p2, p3, p4}, Liq0;-><init>(Lzy4;Lkga;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lwn2;-><init>(Llx7;Liq0;)V

    return-void
.end method

.method public static synthetic h(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;
    .locals 0

    invoke-static {p0, p1, p2}, Lwn2;->j(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;
    .locals 1

    const-string v0, "env"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/div2/DivTemplate;->a:Lcom/yandex/div2/DivTemplate$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/yandex/div2/DivTemplate$a;->a(Lhx7;ZLorg/json/JSONObject;)Lcom/yandex/div2/DivTemplate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Lkga;
    .locals 0

    invoke-virtual {p0}, Lwn2;->i()Liq0;

    move-result-object p0

    return-object p0
.end method

.method public d()Liga$a;
    .locals 0

    iget-object p0, p0, Lwn2;->e:Liga$a;

    return-object p0
.end method

.method public i()Liq0;
    .locals 0

    iget-object p0, p0, Lwn2;->d:Liq0;

    return-object p0
.end method

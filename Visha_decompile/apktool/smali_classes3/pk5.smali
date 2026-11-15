.class public final synthetic Lpk5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lqk5$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lqk5$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpk5;->a:Ljava/lang/String;

    iput-object p2, p0, Lpk5;->b:Lqk5$a;

    return-void
.end method


# virtual methods
.method public final a(Lic1;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpk5;->a:Ljava/lang/String;

    iget-object p0, p0, Lpk5;->b:Lqk5$a;

    invoke-static {v0, p0, p1}, Lqk5;->a(Ljava/lang/String;Lqk5$a;Lic1;)Lok5;

    move-result-object p0

    return-object p0
.end method

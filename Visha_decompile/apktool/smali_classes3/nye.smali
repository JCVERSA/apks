.class public final Lnye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lnye;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lnye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnye;->a:J

    iput-object p3, p0, Lnye;->b:Ljava/lang/String;

    iput-object p4, p0, Lnye;->c:Lnye;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lnye;->a:J

    return-wide v0
.end method

.method public final b()Lnye;
    .locals 0

    iget-object p0, p0, Lnye;->c:Lnye;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnye;->b:Ljava/lang/String;

    return-object p0
.end method

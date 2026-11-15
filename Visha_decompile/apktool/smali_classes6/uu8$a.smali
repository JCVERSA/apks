.class public final Luu8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luu8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lus8;

.field public final b:Lorg/acra/sender/ReportSenderException;


# direct methods
.method public constructor <init>(Lus8;Lorg/acra/sender/ReportSenderException;)V
    .locals 1

    const-string v0, "sender"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luu8$a;->a:Lus8;

    iput-object p2, p0, Luu8$a;->b:Lorg/acra/sender/ReportSenderException;

    return-void
.end method


# virtual methods
.method public final a()Lorg/acra/sender/ReportSenderException;
    .locals 0

    iget-object p0, p0, Luu8$a;->b:Lorg/acra/sender/ReportSenderException;

    return-object p0
.end method

.method public final b()Lus8;
    .locals 0

    iget-object p0, p0, Luu8$a;->a:Lus8;

    return-object p0
.end method

.class public final Lkga$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkga;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkga$a;->a()Lkga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lza3;
    .locals 0

    const-string p0, "templateId"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

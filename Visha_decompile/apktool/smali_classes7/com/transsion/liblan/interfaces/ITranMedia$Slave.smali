.class public Lcom/transsion/liblan/interfaces/ITranMedia$Slave;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/interfaces/ITranMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slave"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranMedia$Slave$Type;
    }
.end annotation


# instance fields
.field public final priority:I

.field public final type:I

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->type:I

    iput p2, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->priority:I

    iput-object p3, p0, Lcom/transsion/liblan/interfaces/ITranMedia$Slave;->uri:Ljava/lang/String;

    return-void
.end method

package com.transsion.audiotagger.tag.id3.framebody;

import com.transsion.audiotagger.tag.InvalidTagException;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import com.transsion.audiotagger.tag.id3.AbstractTagItem;
import com.transsion.audiotagger.tag.id3.ID3v23Frames;
import com.transsion.audiotagger.tag.id3.ID3v24Frames;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import java.nio.ByteBuffer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;

public class FrameBodyTDRC extends AbstractFrameBodyTextInfo implements ID3v24FrameBody {
    private static final int PRECISION_DAY = 3;
    private static final int PRECISION_HOUR = 2;
    private static final int PRECISION_MINUTE = 1;
    private static final int PRECISION_MONTH = 4;
    private static final int PRECISION_SECOND = 0;
    private static final int PRECISION_YEAR = 5;
    private static SimpleDateFormat formatDateIn;
    private static SimpleDateFormat formatDateOut;
    private static SimpleDateFormat formatHoursOut;
    private static SimpleDateFormat formatMonthOut;
    private static SimpleDateFormat formatTimeIn;
    private static SimpleDateFormat formatTimeOut;
    private static SimpleDateFormat formatYearIn;
    private static SimpleDateFormat formatYearOut;
    private static final List<SimpleDateFormat> formatters;
    private String date;
    private boolean hoursOnly;
    private boolean monthOnly;
    private String originalID;
    private String time;
    private String year;

    static {
        ArrayList arrayList = new ArrayList();
        formatters = arrayList;
        Locale locale = Locale.UK;
        arrayList.add(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", locale));
        arrayList.add(new SimpleDateFormat("yyyy-MM-dd'T'HH:mm", locale));
        arrayList.add(new SimpleDateFormat("yyyy-MM-dd'T'HH", locale));
        arrayList.add(new SimpleDateFormat(OSDateTimePicker.FORMAT_Y_M_D, locale));
        arrayList.add(new SimpleDateFormat("yyyy-MM", locale));
        arrayList.add(new SimpleDateFormat("yyyy", locale));
        formatYearIn = new SimpleDateFormat("yyyy", locale);
        formatDateIn = new SimpleDateFormat("ddMM", locale);
        formatTimeIn = new SimpleDateFormat("HHmm", locale);
        formatYearOut = new SimpleDateFormat("yyyy", locale);
        formatDateOut = new SimpleDateFormat("-MM-dd", locale);
        formatMonthOut = new SimpleDateFormat("-MM", locale);
        formatTimeOut = new SimpleDateFormat("'T'HH:mm", locale);
        formatHoursOut = new SimpleDateFormat("'T'HH", locale);
    }

    public FrameBodyTDRC() {
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
    }

    private void extractID3v23Formats(Date date, int i) {
        AbstractTagItem.logger.fine("Precision is:" + i + "for date:" + date.toString());
        if (i == 5) {
            setYear(formatDateAsYear(date));
            return;
        }
        if (i == 4) {
            setYear(formatDateAsYear(date));
            setDate(formatDateAsDate(date));
            this.monthOnly = true;
            return;
        }
        if (i == 3) {
            setYear(formatDateAsYear(date));
            setDate(formatDateAsDate(date));
            return;
        }
        if (i == 2) {
            setYear(formatDateAsYear(date));
            setDate(formatDateAsDate(date));
            setTime(formatDateAsTime(date));
            this.hoursOnly = true;
            return;
        }
        if (i == 1) {
            setYear(formatDateAsYear(date));
            setDate(formatDateAsDate(date));
            setTime(formatDateAsTime(date));
        } else if (i == 0) {
            setYear(formatDateAsYear(date));
            setDate(formatDateAsDate(date));
            setTime(formatDateAsTime(date));
        }
    }

    private static synchronized String formatAndParse(SimpleDateFormat simpleDateFormat, SimpleDateFormat simpleDateFormat2, String str) {
        try {
        } catch (ParseException unused) {
            AbstractTagItem.logger.warning("Unable to parse:" + str);
            return "";
        }
        return simpleDateFormat.format(simpleDateFormat2.parse(str));
    }

    private static synchronized String formatDateAsDate(Date date) {
        return formatDateIn.format(date);
    }

    private static synchronized String formatDateAsTime(Date date) {
        return formatTimeIn.format(date);
    }

    private static synchronized String formatDateAsYear(Date date) {
        return formatYearIn.format(date);
    }

    public void findMatchingMaskAndExtractV3Values() {
        Date date;
        int i = 0;
        while (true) {
            List<SimpleDateFormat> list = formatters;
            if (i >= list.size()) {
                return;
            }
            try {
                synchronized (list.get(i)) {
                    date = list.get(i).parse(getText());
                }
                if (date != null) {
                    extractID3v23Formats(date, i);
                    return;
                }
                i++;
            } catch (NumberFormatException e) {
                AbstractTagItem.logger.log(Level.WARNING, "Date Formatter:" + formatters.get(i).toPattern() + "failed to parse:" + getText() + "with " + e.getMessage(), (Throwable) e);
            } catch (ParseException unused) {
                continue;
            }
        }
    }

    public String getDate() {
        return this.date;
    }

    public String getFormattedText() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.originalID == null) {
            return getText();
        }
        String str = this.year;
        if (str != null && !str.trim().isEmpty()) {
            stringBuffer.append(formatAndParse(formatYearOut, formatYearIn, this.year));
        }
        if (!this.date.equals("")) {
            if (isMonthOnly()) {
                stringBuffer.append(formatAndParse(formatMonthOut, formatDateIn, this.date));
            } else {
                stringBuffer.append(formatAndParse(formatDateOut, formatDateIn, this.date));
            }
        }
        if (!this.time.equals("")) {
            if (isHoursOnly()) {
                stringBuffer.append(formatAndParse(formatHoursOut, formatTimeIn, this.time));
            } else {
                stringBuffer.append(formatAndParse(formatTimeOut, formatTimeIn, this.time));
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public String getIdentifier() {
        return ID3v24Frames.FRAME_ID_YEAR;
    }

    public String getOriginalID() {
        return this.originalID;
    }

    public String getTime() {
        return this.time;
    }

    public String getYear() {
        return this.year;
    }

    public boolean isHoursOnly() {
        return this.hoursOnly;
    }

    public boolean isMonthOnly() {
        return this.monthOnly;
    }

    public void setDate(String str) {
        AbstractTagItem.logger.finest("Setting date to:" + str);
        this.date = str;
    }

    public void setHoursOnly(boolean z) {
        this.hoursOnly = z;
    }

    public void setMonthOnly(boolean z) {
        this.monthOnly = z;
    }

    public void setTime(String str) {
        AbstractTagItem.logger.finest("Setting time to:" + str);
        this.time = str;
    }

    public void setYear(String str) {
        AbstractTagItem.logger.finest("Setting year to" + str);
        this.year = str;
    }

    public FrameBodyTDRC(FrameBodyTDRC frameBodyTDRC) {
        super(frameBodyTDRC);
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
    }

    public FrameBodyTDRC(FrameBodyTYER frameBodyTYER) {
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        this.originalID = ID3v23Frames.FRAME_ID_V3_TYER;
        this.year = frameBodyTYER.getText();
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, getFormattedText());
    }

    public FrameBodyTDRC(FrameBodyTIME frameBodyTIME) {
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        this.originalID = ID3v23Frames.FRAME_ID_V3_TIME;
        this.time = frameBodyTIME.getText();
        setHoursOnly(frameBodyTIME.isHoursOnly());
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, getFormattedText());
    }

    public FrameBodyTDRC(FrameBodyTDAT frameBodyTDAT) {
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        this.originalID = ID3v23Frames.FRAME_ID_V3_TDAT;
        this.date = frameBodyTDAT.getText();
        setMonthOnly(frameBodyTDAT.isMonthOnly());
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, getFormattedText());
    }

    public FrameBodyTDRC(FrameBodyTRDA frameBodyTRDA) {
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        this.originalID = ID3v23Frames.FRAME_ID_V3_TRDA;
        this.date = frameBodyTRDA.getText();
        setObjectValue(DataTypes.OBJ_TEXT_ENCODING, (byte) 0);
        setObjectValue(DataTypes.OBJ_TEXT, getFormattedText());
    }

    public FrameBodyTDRC(byte b, String str) {
        super(b, str);
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        findMatchingMaskAndExtractV3Values();
    }

    public FrameBodyTDRC(ByteBuffer byteBuffer, int i) throws InvalidTagException {
        super(byteBuffer, i);
        this.year = "";
        this.time = "";
        this.date = "";
        this.monthOnly = false;
        this.hoursOnly = false;
        findMatchingMaskAndExtractV3Values();
    }
}

package com.entity.vo;

import com.entity.HuodongEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 组团活动
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("huodong")
public class HuodongVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 活动管理员
     */

    @TableField(value = "huodongguanliyuan_id")
    private Integer huodongguanliyuanId;


    /**
     * 组团活动名称
     */

    @TableField(value = "huodong_name")
    private String huodongName;


    /**
     * 组团活动编号
     */

    @TableField(value = "huodong_uuid_number")
    private String huodongUuidNumber;


    /**
     * 组团活动照片
     */

    @TableField(value = "huodong_photo")
    private String huodongPhoto;


    /**
     * 活动开始时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "kaishi_time")
    private Date kaishiTime;


    /**
     * 活动结束时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "jieshu_time")
    private Date jieshuTime;


    /**
     * 活动地点
     */

    @TableField(value = "huodong_address")
    private String huodongAddress;


    /**
     * 组团活动类型
     */

    @TableField(value = "huodong_types")
    private Integer huodongTypes;


    /**
     * 最大参与人数
     */

    @TableField(value = "huodong_zuida_number")
    private Integer huodongZuidaNumber;


    /**
     * 活动热度
     */

    @TableField(value = "huodong_clicknum")
    private Integer huodongClicknum;


    /**
     * 赞数量
     */

    @TableField(value = "zan_number")
    private Integer zanNumber;


    /**
     * 踩数量
     */

    @TableField(value = "cai_number")
    private Integer caiNumber;


    /**
     * 组团活动详细介绍
     */

    @TableField(value = "huodong_content")
    private String huodongContent;


    /**
     * 是否上架
     */

    @TableField(value = "shangxia_types")
    private Integer shangxiaTypes;


    /**
     * 逻辑删除
     */

    @TableField(value = "huodong_delete")
    private Integer huodongDelete;


    /**
     * 创建时间  show1 show2 photoShow
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：活动管理员
	 */
    public Integer getHuodongguanliyuanId() {
        return huodongguanliyuanId;
    }


    /**
	 * 获取：活动管理员
	 */

    public void setHuodongguanliyuanId(Integer huodongguanliyuanId) {
        this.huodongguanliyuanId = huodongguanliyuanId;
    }
    /**
	 * 设置：组团活动名称
	 */
    public String getHuodongName() {
        return huodongName;
    }


    /**
	 * 获取：组团活动名称
	 */

    public void setHuodongName(String huodongName) {
        this.huodongName = huodongName;
    }
    /**
	 * 设置：组团活动编号
	 */
    public String getHuodongUuidNumber() {
        return huodongUuidNumber;
    }


    /**
	 * 获取：组团活动编号
	 */

    public void setHuodongUuidNumber(String huodongUuidNumber) {
        this.huodongUuidNumber = huodongUuidNumber;
    }
    /**
	 * 设置：组团活动照片
	 */
    public String getHuodongPhoto() {
        return huodongPhoto;
    }


    /**
	 * 获取：组团活动照片
	 */

    public void setHuodongPhoto(String huodongPhoto) {
        this.huodongPhoto = huodongPhoto;
    }
    /**
	 * 设置：活动开始时间
	 */
    public Date getKaishiTime() {
        return kaishiTime;
    }


    /**
	 * 获取：活动开始时间
	 */

    public void setKaishiTime(Date kaishiTime) {
        this.kaishiTime = kaishiTime;
    }
    /**
	 * 设置：活动结束时间
	 */
    public Date getJieshuTime() {
        return jieshuTime;
    }


    /**
	 * 获取：活动结束时间
	 */

    public void setJieshuTime(Date jieshuTime) {
        this.jieshuTime = jieshuTime;
    }
    /**
	 * 设置：活动地点
	 */
    public String getHuodongAddress() {
        return huodongAddress;
    }


    /**
	 * 获取：活动地点
	 */

    public void setHuodongAddress(String huodongAddress) {
        this.huodongAddress = huodongAddress;
    }
    /**
	 * 设置：组团活动类型
	 */
    public Integer getHuodongTypes() {
        return huodongTypes;
    }


    /**
	 * 获取：组团活动类型
	 */

    public void setHuodongTypes(Integer huodongTypes) {
        this.huodongTypes = huodongTypes;
    }
    /**
	 * 设置：最大参与人数
	 */
    public Integer getHuodongZuidaNumber() {
        return huodongZuidaNumber;
    }


    /**
	 * 获取：最大参与人数
	 */

    public void setHuodongZuidaNumber(Integer huodongZuidaNumber) {
        this.huodongZuidaNumber = huodongZuidaNumber;
    }
    /**
	 * 设置：活动热度
	 */
    public Integer getHuodongClicknum() {
        return huodongClicknum;
    }


    /**
	 * 获取：活动热度
	 */

    public void setHuodongClicknum(Integer huodongClicknum) {
        this.huodongClicknum = huodongClicknum;
    }
    /**
	 * 设置：赞数量
	 */
    public Integer getZanNumber() {
        return zanNumber;
    }


    /**
	 * 获取：赞数量
	 */

    public void setZanNumber(Integer zanNumber) {
        this.zanNumber = zanNumber;
    }
    /**
	 * 设置：踩数量
	 */
    public Integer getCaiNumber() {
        return caiNumber;
    }


    /**
	 * 获取：踩数量
	 */

    public void setCaiNumber(Integer caiNumber) {
        this.caiNumber = caiNumber;
    }
    /**
	 * 设置：组团活动详细介绍
	 */
    public String getHuodongContent() {
        return huodongContent;
    }


    /**
	 * 获取：组团活动详细介绍
	 */

    public void setHuodongContent(String huodongContent) {
        this.huodongContent = huodongContent;
    }
    /**
	 * 设置：是否上架
	 */
    public Integer getShangxiaTypes() {
        return shangxiaTypes;
    }


    /**
	 * 获取：是否上架
	 */

    public void setShangxiaTypes(Integer shangxiaTypes) {
        this.shangxiaTypes = shangxiaTypes;
    }
    /**
	 * 设置：逻辑删除
	 */
    public Integer getHuodongDelete() {
        return huodongDelete;
    }


    /**
	 * 获取：逻辑删除
	 */

    public void setHuodongDelete(Integer huodongDelete) {
        this.huodongDelete = huodongDelete;
    }
    /**
	 * 设置：创建时间  show1 show2 photoShow
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间  show1 show2 photoShow
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}

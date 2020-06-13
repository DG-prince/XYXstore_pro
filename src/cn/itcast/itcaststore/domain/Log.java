package cn.itcast.itcaststore.domain;

import java.util.logging.Logger;

public class Log {

	private Logger logger;
	private String gtype;
	//private String userId = null;
	//private String pname = null;
	//private double total;
	
	public Log(String gtype){
		this.gtype = gtype;
		
		switch(this.gtype) {
		case "电器":
			this.logger = Logger.getLogger("typeCard");
			//System.out.println("match success");
			break;
		case "数码":
			this.logger = Logger.getLogger("typeAdven");
			break;
		case "男装":
			this.logger = Logger.getLogger("typeComp");
			break;
		case "女装":
			this.logger = Logger.getLogger("typeDefense");
			break;
		case "生鲜":
			this.logger = Logger.getLogger("typeSimula");
			break;
		case "食品":
			this.logger = Logger.getLogger("typeLeisure");
			break;
		case "鞋靴":
			this.logger = Logger.getLogger("typeHorror");
			break;
		case "百货":
			this.logger = Logger.getLogger("typeRpg");
			break;
		case "提包":
			this.logger = Logger.getLogger("typeStrategy");
			break;
		case "母婴":
			this.logger = Logger.getLogger("typeMove");
			break;
		case "饰品":
			this.logger = Logger.getLogger("typeShot");
			break;
		case "手机":
			this.logger = Logger.getLogger("typeMusic");
			break;
		case "洗护":
			this.logger = Logger.getLogger("typePe");
			break;
		case "运动":
			this.logger = Logger.getLogger("typeFight");
			break;
		}
		//System.out.println("long.java type:"+this.logger);
	}
	
	
	public boolean buyLog(String userId,double money) {
		try{
			//System.out.println("long.java func:"+this.logger);
			this.logger.info("[" + userId + "]购物花费了[" + money + "]");
			return true;
		}catch(Exception e){
			this.logger.info("错误信息:"+e.toString());
			return false;
		}
	}
	
	public boolean browseLog(String userId,String pname) {
		try{						
			this.logger.info("[" + userId + "]正在查询商品:" + pname);
			return true;
		}catch(Exception e){
			this.logger.info("错误信息"+e.toString());
			return false;
		}
	}

}

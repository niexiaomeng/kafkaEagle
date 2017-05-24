/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.smartloli.kafka.eagle.common.domain;

import com.google.gson.Gson;

/**
 * Definition Kafka consumer detail information.
 * 
 * @author smartloli.
 *
 *         Created by Aug 16, 2016
 */
public class TopicConsumerDomain {

	private int id;
	private String topic;
	private boolean isConsumering;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public boolean isConsumering() {
		return isConsumering;
	}

	public void setConsumering(boolean isConsumering) {
		this.isConsumering = isConsumering;
	}

	@Override
	public String toString() {
		return new Gson().toJson(this);
	}

}
